package cn.xgtd.service.impl;

import cn.xgtd.dao.ArrivalNoticeDao;
import cn.xgtd.dao.ProductDao;
import cn.xgtd.domain.arrivalNotice.ArrivalNotice;
import cn.xgtd.domain.product.*;
import cn.xgtd.messageQueue.producer.arrivalNotice.ArrivalNoticeMq;
import cn.xgtd.service.ProductService;
import cn.xgtd.util.img.UploadFileUtil;
import cn.xgtd.util.redis.RedisUtil;
import com.sun.tools.javac.code.Attribute;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * 商品业务层
 * @author Kite
 * @date 2020/6/6
 */
@Service
public class ProductServiceImpl implements ProductService {


    /**
     * 商品持久层
     **/
    @Autowired
    ProductDao productDao;

    /**到货通知**/
    @Autowired
    private ArrivalNoticeDao arrivalNoticeDao;

    /**到货通知消息中间件发送**/
    @Autowired
    public ArrivalNoticeMq arrivalNoticeMq;
    /**
     * 缓存工具类
     **/
    @Autowired
    RedisUtil redisUtil;

    //七牛云储存空间
    String space = "productdataf";


    List<String> objects = new ArrayList<>();

    /**
     * 查询商品详细信息
     *
     * @return
     */
    @Override
    public List<ProductDetails> findDetails(Integer currentPage, Integer pageSize) {
//        String productIds ="productDetails";
//        //从缓存中查询是否存在
//        List<ProductDetails>  redis = (List<ProductDetails>)redisUtil.get(productIds);
//        if(redis!=null){
//            return redis;
//        }
        Integer start = (currentPage - 1) * pageSize;
        List<ProductDetails> productDetailsResult = productDao.fendProduct(start, pageSize);
        List<ProductDetails> productDetailsList = new ArrayList<>();
        for (int i = 0; i < productDetailsResult.size(); i++) {
            ProductDetails productDetails = new ProductDetails();
            //设置商品详细以及配置信息
            productDetails = setProductConfiguration(productDetailsResult.get(i));
            productDetailsList.add(productDetails);
        }

        for (int i = 0; i < productDetailsResult.size(); i++) {
            productDetailsResult.get(i).setProductContexts(null);
            String weight = productDetailsResult.get(i).getWeight();
            if (weight != null) {
                Double weights = null;
                if (!weight.equals("不计重")) {
                    weight = weight.split("k")[0];
                    weights = Double.valueOf(weight);
                } else {
                    weights = 00.00;
                }
                productDetailsResult.get(i).setWeights(weights);
            }

            //查询不同配置集合 库存 价格
            List<ProductDistinction> productDistinctions = productDao.findProductDistinction(productDetailsResult.get(i).getProductId());
            productDetailsResult.get(i).setProductDistinctions(productDistinctions);
        }
//        redisUtil.set(productIds,productDetailsResult);
        return productDetailsResult;

    }


    /**
     * 查询商品分类
     *
     * @return
     */
    @Override
    public List<ProductCategory> findCategory() {
        List<ProductCategory> productCategories = (List<ProductCategory>) redisUtil.get("productCategory");
        if (productCategories == null) {
            productCategories = productDao.findCategory();
            redisUtil.set("productCategory", productCategories, 259200000);
        }
        return productCategories;
    }

    /**
     * 添加商品
     *
     * @param productDetails 商品对象
     * @return
     */
    @Override
    public ProductDetails addProduct(ProductDetails productDetails) throws IOException {

        //设置视频
        String videoFileName = productDetails.getVideo();
        if (videoFileName != null && !videoFileName.equals("")) {
            String videoUrl = uploadingVideo(videoFileName);
            productDetails.setVideo(videoUrl);
        }
        //转种类集合为对象
        ProductClassify productClassify = updateProductClassify(productDetails.getProductClassifyList());
        productDetails.setProductClassify(productClassify);
        //添加商品
        productDao.addProduct(productDetails);
        //添加商品价格
        productDao.addProductPrice(productDetails.getProductId(), productDetails.getProductPrice());
        //获取添加商品的返回id
        Integer productId = productDetails.getProductId();
        //添加商品图片
        if (productDetails.getImageSite() != null) {
            List<ProductImage> prodnuctList = uploadingImage(productDetails.getImageSite(), productId, true);
            if (prodnuctList != null) {
                productDao.addProductImage(prodnuctList);
            }
        }
        //添加商品配置
        List<ProductContext> productContexts = productDetails.getProductContexts();
        for (int i = 0; i < productContexts.size(); i++) {
            productContexts.get(i).setProductId(productId);
        }
        if (productContexts.size() > 0) {
            productDao.addProductContext(productContexts);
        }


        //查询添加的商品配置
        ProductDetails productDetailss = new ProductDetails();
        List<ProductContext> productContextsList = productDao.findProductAttribute(productId);
        //设置商品配置
        if (productContextsList != null) {
            productDetailss.setProductContexts(productContextsList);
            productDetailss = setProductConfiguration(productDetailss);
            productDetailss.setProductId(productId);
        } else {
            productDetailss = null;
        }
        if (productContextsList.size() > 0) {
            //获取不同配置排列组合
            List<Distinction> distinctions = distinctions(productDetailss, productId);
            productDao.addDistinction(distinctions);
        }


        //查询不同配置集合 库存 价格
        List<ProductDistinction> productDistinctions = productDao.findProductDistinction(productId);
        productDetailss.setProductDistinctions(productDistinctions);

        return productDetailss;
    }

    /**
     * 修改商品库存
     *
     * @param productDistinctions 商品配置详细
     * @return
     */
    @Override
    public Integer updateDetails(List<ProductDistinction> productDistinctions ) {

        Integer result = 0 ;
        for (int i = 0; i <productDistinctions.size() ; i++) {
            Double productPrice = productDistinctions.get(i).getProductPrice();
            if (productPrice == 0.00){
                return result;
            }
        }
        Integer productId =0;
        if (productDistinctions!=null && productDistinctions.size()>0){
            productDao.updateShelves(productDistinctions.get(0).getProductId() , 1);
        }

        result = productDao.updateDetails(productDistinctions);

        //查询不同配置库存
        List<Integer> productDistinction = productDao.findDistinctionInventory(productId);
        if (productDistinction!=null & productDistinction.size()>0){
            List<ArrivalNotice> arrivalNotices = arrivalNoticeDao.findArrivalNotice(productDistinction);
            for (int i = 0; i <arrivalNotices.size() ; i++) {
                String[] smg = new String[2];
                smg[0]=arrivalNotices.get(i).userEmail;
                smg[1]="尊敬的微利会员 ：您关注的商品"+arrivalNotices.get(i).getProductName()+"已经有货了";
                //消息中间件
                arrivalNoticeMq.sendShoppingInformation("arrival",smg);
            }

        }


        return result;
    }

    /**
     * 查询所有商品种类
     *
     * @return
     */
    @Override
    public List<AttributeType> findAttributeType() {
        List<AttributeType> attributeTypes = productDao.findAttributeType();
        return attributeTypes;
    }

    /**
     * 修改商品
     *
     * @param productDetails 商品对象
     * @return
     */
    @Override
    public ProductDetails updateProduct(ProductDetails productDetails) throws IOException {
        Integer productId = productDetails.getProductId();
        //设置视频
        String videoFileName = productDetails.getVideo();
        if (videoFileName != null && !videoFileName.equals("")) {
            String videoUrl = uploadingVideo(videoFileName);
            productDetails.setVideo(videoUrl);
        }

        //转种类集合为对象
        ProductClassify productClassify = updateProductClassify(productDetails.getProductClassifyList());
        productDetails.setProductClassify(productClassify);
        //修改商品基本信息
        productDao.updateProduct(productDetails);
        //商品图片上传
        List<ProductImage> productImages = new ArrayList<>();
        productImages = productDao.findProductImage(productId);
        List<String> imageList = productDetails.getImageSite();
        //需要上传的图片
        List<String> images = new ArrayList<>();
        for (int i = 0; i < imageList.size(); i++) {
            String image = imageList.get(i);
            image = image.trim();
            image = image.replaceAll("\n", "");
            image = image.replaceAll("\r", "");
            String str = null;
            try {
                str = image.substring(0, image.indexOf("/"));
            } catch (Exception e) {
            }
            //是否是视频链接
            if (str != null && "http:".equals(str)) {
                for (int j = 0; j < productImages.size(); j++) {
                    //数据库是否有匹配的 有匹配的 移除
                    String sqlImage = productImages.get(j).getImageSite();
                    if (image.equals(sqlImage)) {
                        productImages.remove(j);
                    }
                }
            } else {
                images.add(imageList.get(i));
            }
        }
        //是否删除了主图片
        Boolean imageSign = false;
        //删除不使用图片
        if (productImages.size() > 0) {
            List<ProductImage> deleteImageList = new ArrayList<>();
            for (int i = 0; i < productImages.size(); i++) {
                deleteImageList.add(productImages.get(i));
                if (productImages.get(i).getSign()) {
                    imageSign = true;
                }
            }
            if (deleteImageList.size() > 0) {
                productDao.deleteProductImage(deleteImageList);
            }

            if (images.size() < 1 && imageSign) {
                List<ProductImage> productImage = productDao.findProductImage(productId);
                if (productImage.size() > 0) {
                    productDao.updateImageSige(productImage.get(0).getId());
                }

            }
        }

        //上传图片
        if (images.size() > 0) {
            List<ProductImage> prodnuctList = uploadingImage(images, productId, imageSign);
            if (prodnuctList != null) {
                productDao.addProductImage(prodnuctList);
            }
        }

        //修改商品配置
        updateProductContexts(productId, productDetails.getProductContexts());
        ProductDetails productDetailss = new ProductDetails();
        //查询不同配置集合 库存 价格
        List<ProductDistinction> productDistinctions = productDao.findProductDistinction(productId);
        productDetailss.setProductDistinctions(productDistinctions);
        //删除原有缓存
        redisUtil.del("productId_" + productId);
        return productDetailss;
    }


    /**
     * 查询总页数跟总数量
     *
     * @param pageSize 每页查询数量
     * @return
     */
    @Override
    public Integer[] fendTotalPage(Integer pageSize) {
        Integer[] TotalPage = new Integer[2];
        Integer quantity = productDao.findFavoriteQuantity();
        int totalPage = (quantity % pageSize) == 0 ? quantity / pageSize : (quantity / pageSize) + 1;
        TotalPage[0] = quantity;
        TotalPage[1] = totalPage;
        return TotalPage;
    }

    /**
     * 上传视频
     *
     * @param videoFileName 视频名
     * @return 视频上传成功地址
     */
    public String uploadingVideo(String videoFileName) throws IOException {
        String video = UploadFileUtil.uploadFileUtil(space, videoFileName, videoFileName);
        redisUtil.del(videoFileName + "Succeed");
        return video;

    }

    /**
     * 转换商品种类集合为对象
     *
     * @param productClassifyList 集合
     * @return 种类对象
     */
    public ProductClassify updateProductClassify(List<Integer> productClassifyList) {
        ProductClassify productClassify = new ProductClassify();
        if (productClassifyList.size() == 3) {
            productClassify.setProductPrimaryId(productClassifyList.get(0));
            productClassify.setProductSecondaryId(productClassifyList.get(1));
            productClassify.setProductFinalId((productClassifyList.get(2)));
        }
        return productClassify;
    }

    /**
     * 图片上传至七牛云
     *
     * @param imageStrings 图片集合
     * @param productId    商品id
     * @param sign         是否要设置主图
     * @return
     * @throws IOException
     */
    public List<ProductImage> uploadingImage(List<String> imageStrings, Integer productId, Boolean sign) throws IOException {

        List<ProductImage> imageList = new ArrayList<>();
        List<String> imageString = imageStrings;
        if (imageString != null) {
            for (int i = 0; i < imageString.size(); i++) {
                ProductImage productImage = new ProductImage();
                if (sign && i == 0) {
                    productImage.setSign(true);
                    productImage.setImageSite(imageString.get(i));
                } else {
                    productImage.setSign(false);
                    productImage.setImageSite(imageString.get(i));
                }
                imageList.add(productImage);
            }
        }
        //商品图片转换
        List<ProductImage> imageSiteList = new ArrayList<>();
        //上传商品图片
        if (imageList != null) {
            if (imageList.size() > 0 && !imageList.equals("")) {
                for (int i = 0; i < imageList.size(); i++) {
                    ProductImage productImage = new ProductImage();
                    String imageSites = UploadFileUtil.uploadFileUtil(space, productId.toString(), imageList.get(i).getImageSite());
                    productImage.setImageSite(imageSites);
                    productImage.setSign(imageList.get(i).getSign());
                    productImage.setProductId(productId);
                    imageSiteList.add(productImage);
                    redisUtil.del(imageList.get(i).getImageSite().substring(0, imageList.get(i).getImageSite().indexOf(".")) + "Composite");

                }
            }
        }
        return imageSiteList;
    }


    /**
     * 获取配置的排列组合
     *
     * @param productDetails 商品对象
     * @return
     */
    public List<Distinction> distinctions(ProductDetails productDetails, Integer productId) {

        //获取商品种类
        List<List<String>> list = getProductConfiguration(productDetails);
        if (list.size() > 0) {
            //定义配置二维数组
            String[][] array = new String[list.size()][];
            for (int i = 0; i < list.size(); i++) {
                array[i] = new String[list.get(i).size()];
                for (int j = 0; j < list.get(i).size(); j++) {
                    array[i][j] = list.get(i).get(j);
                }
            }
            String[] num = new String[array.length];
            objects = new ArrayList<>();
            sort(array, array.length, 0, num);

            List arrayList = objects;
            List<String[]> stringArray = new ArrayList<>();
            for (int i = 0; i < arrayList.size(); i++) {
                String listString = (String) arrayList.get(i);
                listString = listString.substring(0, listString.length() - 1);   //截掉
                listString = listString.replace("[", "");
                String[] type = listString.split(", ");
                stringArray.add(type);
            }
            //商品配置信息
            List<List<ProductContext>> productContextslist = new ArrayList<>();
            for (int i = 0; i < stringArray.size(); i++) {

                String[] typeId = (String[]) stringArray.get(i);
                List<ProductContext> productContextList = new ArrayList<>();
                for (int j = 0; j < typeId.length; j++) {
                    ProductContext productContext = new ProductContext();
                    String[] type = typeId[j].split("/");
                    productContext.setTitleId(Integer.parseInt(type[0]));
                    productContext.setAttributeId(Integer.parseInt(type[1]));
                    productContextList.add(productContext);
                }
                productContextslist.add(productContextList);
            }
            List<Distinction> distinctions = addProductDetails(productContextslist);

            for (int i = 0; i < distinctions.size(); i++) {
                distinctions.get(i).setProductId(productId);
            }
            //添加商品配置
            return distinctions;
        }
        return null;
    }


    /**
     * 设置配置类型id跟配置id
     *
     * @param productContexts
     * @return
     */
    public List<String> findContext(List<ProductContext> productContexts) {
        List<String> productContext = new ArrayList<>();
        for (int i = 0; i < productContexts.size(); i++) {
            String product = productContexts.get(i).getTitleId() + "/" + productContexts.get(i).getAttributeId();
            productContext.add(product);
        }
        return productContext;
    }


    /**
     * 商品配置分类
     *
     * @param productContexts
     * @return
     */
    public List<Distinction> addProductDetails(List<List<ProductContext>> productContexts) {
        List<Distinction> contexts = new ArrayList<>();
        for (int i = 0; i < productContexts.size(); i++) {
            Distinction context = new Distinction();
            for (int j = 0; j < productContexts.get(i).size(); j++) {
                Integer type = productContexts.get(i).get(j).getTitleId();
                if (type == null) {
                    type = productContexts.get(i).get(j).getAttributeId();
                }
                Integer attributeId = productContexts.get(i).get(j).getAttributeId();
                switch (type) {
                    case 11:
                        context.setColourId(attributeId);
                        break;
                    case 16:
                        context.setVersionIfId(attributeId);
                        break;
                    case 13:
                        context.setSpecificationId(attributeId);
                        ;
                        break;
                    case 10:
                        context.setSizeId(attributeId);
                        break;
                    case 15:
                        context.setKindId(attributeId);
                        ;
                        break;
                    case 14:
                        context.setKindId(attributeId);
                        ;
                        break;
                    case 12:
                        context.setComboId(attributeId);
                        ;
                        break;
                }
            }
            contexts.add(context);
        }
        return contexts;

    }


    /**
     * 设置商品配置
     *
     * @return 商品对象
     */
    public ProductDetails setProductConfiguration(ProductDetails productDetailsResult) {

        List<ProductContext> productContexts = productDetailsResult.getProductContexts();

        if (productContexts != null) {
            //颜色集合
            List<ProductContext> colourList = new ArrayList();
            //版本集合
            List<ProductContext> versionList = new ArrayList<>();
            //规格集合
            List<ProductContext> specificationList = new ArrayList<>();
            //种类
            List<ProductContext> kindList = new ArrayList<>();
            //尺码
            List<ProductContext> sizeList = new ArrayList<>();
            //口味
            List<ProductContext> tasteList = new ArrayList<>();
            //套餐
            List<ProductContext> comboList = new ArrayList<>();
            //设置为空
            productDetailsResult.setColour(colourList);
            productDetailsResult.setVersion(versionList);
            productDetailsResult.setSpecification(specificationList);
            productDetailsResult.setKind(kindList);
            productDetailsResult.setSize(sizeList);
            productDetailsResult.setTaste(tasteList);
            productDetailsResult.setCombo(comboList);

            for (int j = 0; j < productContexts.size(); j++) {
                //该商品属性类型
                Integer type = productContexts.get(j).getTitleId();
                if (type == null) {
                    type = Integer.parseInt(productContexts.get(j).getAttributeType());
                }
                //当前属性
                ProductContext productContext = productContexts.get(j);
                switch (type) {
                    case 11:
                        colourList.add(productContext);
                        break;
                    case 16:
                        versionList.add(productContext);
                        break;
                    case 13:
                        specificationList.add(productContext);
                        ;
                        break;
                    case 10:
                        sizeList.add(productContext);
                        break;
                    case 15:
                        kindList.add(productContext);
                        ;
                        break;
                    case 14:
                        tasteList.add(productContext);
                        ;
                        break;
                    case 12:
                        comboList.add(productContext);
                        ;
                        break;
                }
            }
            productDetailsResult.setColour(colourList);
            productDetailsResult.setVersion(versionList);
            productDetailsResult.setSpecification(specificationList);
            productDetailsResult.setSize(sizeList);
            productDetailsResult.setKind(kindList);
            productDetailsResult.setTaste(tasteList);
            productDetailsResult.setCombo(comboList);
        }
        productDetailsResult.setProductContexts(null);
        return productDetailsResult;
    }

    /**
     * 获取商品配置
     *
     * @return
     */
    public List<List<String>> getProductConfiguration(ProductDetails productDetails) {
        List<List<String>> list = new ArrayList();
        if (productDetails.getSize().size() > 0) {
            List<String> context = findContext(productDetails.getSize());
            list.add(context);
        }
        if (productDetails.getColour().size() > 0) {
            List<String> context = findContext(productDetails.getColour());
            list.add(context);
        }
        if (productDetails.getCombo().size() > 0) {
            List<String> context = findContext(productDetails.getCombo());
            list.add(context);
        }
        if (productDetails.getSpecification().size() > 0) {
            List<String> context = findContext(productDetails.getSpecification());
            list.add(context);
        }
        if (productDetails.getTaste().size() > 0) {
            List<String> context = findContext(productDetails.getTaste());
            list.add(context);
        }
        if (productDetails.getKind().size() > 0) {
            List<String> context = findContext(productDetails.getKind());
            list.add(context);
        }
        if (productDetails.getVersion().size() > 0) {
            List<String> context = findContext(productDetails.getVersion());
            list.add(context);
        }
        return list;
    }


    /**
     * 递归
     *
     * @param array
     * @param length
     * @param index
     * @param num
     */
    public void sort(String[][] array, int length, int index, String[] num) {
        if (index == length) {
            objects.add(Arrays.toString(num));
            return;
        }

        for (int j = 0; j < array[index].length; j++) {//数组中的每一位遍历一次
            num[index] = array[index][j];
            sort(array, length, index + 1, num);
        }
    }

    /**
     * 修改商品配置
     *
     * @param productId      商品id
     * @param productDetails 配置内容
     */
    @Override
    public void updateProductContexts(Integer productId, List<ProductContext> productDetails) {
        //商品配置修改
        List<ProductContext> productContexts = productDetails;
        //已存在的配置
        List<ProductContext> productContextExist = new ArrayList<>();
        //不存在的配置
        List<ProductContext> inexistence = new ArrayList<>();



        Integer size = 0;
        //数据库中配置
        List<ProductContext> productContextList =  productDao.findProductContext(productId);

        size = productContextList.size();

        //需要删除的配置
        List<ProductContext> deleteContext = new ArrayList<>(productContextList);


        //是否删除了全部
        Boolean delete = false;
        if (productContexts.size() > 0) {
            for (int i = 0; i < productContexts.size(); i++) {
                //是否出现新配置
                Boolean flag = true;
                //是否为新属性
                Boolean signs = true;
                    for (int j = 0; j < productContextList.size(); j++) {
                    //判断是否是新属性
                    String productContextsType = productContexts.get(i).getAttributeType();
                    String productContextListType =String.valueOf(productContextList.get(j).getTitleId()) ;
                    Boolean addType = productContextsType.equals(productContextListType);
                    if (addType) {
                        flag = false;
                    }
                    Boolean sign = productContexts.get(i).getAttributeContent().equals(productContextList.get(j).getAttributeContent()) && addType;
                    if (sign) {
                        signs = false;
                        productContextExist.add(productContextList.get(j));
                        for (int k = 0; k < deleteContext.size(); k++) {
                            if (deleteContext.get(k).getAttributeContent().equals(productContextList.get(j).getAttributeContent())){
                                deleteContext.remove(k);
                            }

                        }

                    }

                }
                //出现新属性 删除所有配置 组合
                if (flag) {
                    delete = true;
                }
                //无匹配的值
                if (signs) {
                    inexistence.add(productContexts.get(i));
                }
            }
        }
        if (delete){
            //删除组合
            productDao.deleteDistinction(null, productId);

        }

        //删除无匹配的的配置
        if (deleteContext != null) {
            if (deleteContext.size() > 0) {
                //删除配置
                productDao.deleteContext(deleteContext, null);
                //删除组合
                productDao.deleteDistinction(deleteContext, null);
            }
        }

        //有新增的配置
        if (inexistence != null && inexistence.size() > 0) {
            //不可上架商品
            productDao.updateShelves(productId , 0);
            //商品下架
            updateProductState(productId,false);
            //添加商品配置
            for (int i = 0; i < inexistence.size(); i++) {
                inexistence.get(i).setProductId(productId);
            }
            productDao.addProductContext(inexistence);
            List<ProductContext> contextList = productDao.findProductContext(productId);
            if (size < 1 || delete) {
                ProductDetails productDetailsProperty = new ProductDetails();
                productDetailsProperty.setProductContexts(contextList);
                productDetailsProperty = setProductConfiguration(productDetailsProperty);
                List<Distinction> distinctions = distinctions(productDetailsProperty, productId);
                productDao.addDistinction(distinctions);
            } else {
                //需要新增的配置集合
                List<ProductContext> addContextList = new ArrayList<>();
                for (int i = 0; i < inexistence.size(); i++) {
                    for (int j = 0; j < contextList.size(); j++) {
                        Boolean sign = contextList.get(j).getAttributeContent().equals(inexistence.get(i).getAttributeContent());
                        if (sign) {
                            addContextList.add(contextList.get(j));
                        }
                    }
                }
                if (contextList != null & contextList.size() > 0) {
                    //需要新增的配置
                    ProductDetails detailsInexistence = new ProductDetails();
                    detailsInexistence.setProductContexts(addContextList);
                    ProductDetails addDetails = setProductConfiguration(detailsInexistence);

                    //需要新增的配置
                    List<Distinction> distinctionArrayList = new ArrayList<>();


                    if (addDetails.getColour().size() > 0) {
                        ProductDetails productDetailsProperty = new ProductDetails();
                        //原有的商品配置
                        productDetailsProperty.setProductContexts(contextList);
                        productDetailsProperty = setProductConfiguration(productDetailsProperty);

                        productDetailsProperty.setColour(addDetails.getColour());
                        List<Distinction> distinctions = distinctions(productDetailsProperty, productId);
                        for (int i = 0; i < distinctions.size(); i++) {
                            distinctionArrayList.add(distinctions.get(i));
                        }
                    }

                    if (addDetails.getCombo().size() > 0) {
                        ProductDetails productDetailsProperty = new ProductDetails();
                        //原有的商品配置
                        productDetailsProperty.setProductContexts(contextList);
                        productDetailsProperty = setProductConfiguration(productDetailsProperty);

                        productDetailsProperty.setCombo(addDetails.getCombo());
                        List<Distinction> distinctions = distinctions(productDetailsProperty, productId);
                        for (int i = 0; i < distinctions.size(); i++) {
                            distinctionArrayList.add(distinctions.get(i));
                        }
                    }
                    if (addDetails.getKind().size() > 0) {
                        ProductDetails productDetailsProperty = new ProductDetails();
                        //原有的商品配置
                        productDetailsProperty.setProductContexts(contextList);
                        productDetailsProperty = setProductConfiguration(productDetailsProperty);

                        productDetailsProperty.setKind(addDetails.getKind());
                        List<Distinction> distinctions = distinctions(productDetailsProperty, productId);
                        for (int i = 0; i < distinctions.size(); i++) {
                            distinctionArrayList.add(distinctions.get(i));
                        }
                    }
                    if (addDetails.getTaste().size() > 0) {
                        ProductDetails productDetailsProperty = new ProductDetails();
                        //原有的商品配置
                        productDetailsProperty.setProductContexts(contextList);
                        productDetailsProperty = setProductConfiguration(productDetailsProperty);

                        productDetailsProperty.setTaste(addDetails.getTaste());
                        List<Distinction> distinctions = distinctions(productDetailsProperty, productId);
                        for (int i = 0; i < distinctions.size(); i++) {
                            distinctionArrayList.add(distinctions.get(i));
                        }
                    }
                    if (addDetails.getVersion().size() > 0) {
                        ProductDetails productDetailsProperty = new ProductDetails();
                        //原有的商品配置
                        productDetailsProperty.setProductContexts(contextList);
                        productDetailsProperty = setProductConfiguration(productDetailsProperty);

                        productDetailsProperty.setVersion(addDetails.getVersion());
                        List<Distinction> distinctions = distinctions(productDetailsProperty, productId);
                        for (int i = 0; i < distinctions.size(); i++) {
                            distinctionArrayList.add(distinctions.get(i));
                        }
                    }
                    if (addDetails.getSpecification().size() > 0) {
                        ProductDetails productDetailsProperty = new ProductDetails();
                        //原有的商品配置
                        productDetailsProperty.setProductContexts(contextList);
                        productDetailsProperty = setProductConfiguration(productDetailsProperty);

                        productDetailsProperty.setSpecification(addDetails.getSpecification());
                        List<Distinction> distinctions = distinctions(productDetailsProperty, productId);
                        for (int i = 0; i < distinctions.size(); i++) {
                            distinctionArrayList.add(distinctions.get(i));
                        }
                    }
                    if (addDetails.getSize().size() > 0) {
                        ProductDetails productDetailsProperty = new ProductDetails();
                        //原有的商品配置
                        productDetailsProperty.setProductContexts(contextList);
                        productDetailsProperty = setProductConfiguration(productDetailsProperty);

                        productDetailsProperty.setSize(addDetails.getSize());
                        List<Distinction> distinctions = distinctions(productDetailsProperty, productId);
                        for (int i = 0; i < distinctions.size(); i++) {
                            distinctionArrayList.add(distinctions.get(i));
                        }
                    }
                    productDao.addDistinction(distinctionArrayList);
                }
            }

        }

    }

    /**
     * 商品上架下架
     *
     * @param productId 商品id
     * @param state     上架或下级
     * @return
     */
    @Override
    public Integer updateProductState(Integer productId, Boolean state) {
        Integer result = productDao.updateProductState(productId, state);
        redisUtil.del("recommend");
        return result;
    }


    /**
     * 删除商品
     *
     * @param productId 商品id
     * @return
     */
    @Override
    public Integer deleteProduct(Integer productId) {
        Integer result = productDao.deleteProduct(productId);
        return result;
    }
}


