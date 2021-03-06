package cn.itcast.service.impl;

import cn.itcast.dao.CommentDao;
import cn.itcast.dao.OrderDao;
import cn.itcast.domain.ProductDatails.*;
import cn.itcast.domain.productComment.CommentImage;
import cn.itcast.domain.productComment.CommentQuantity;
import cn.itcast.domain.productComment.SecondComment;
import cn.itcast.domain.productComment.SecondCommentImage;
import cn.itcast.service.CommentService;
import cn.itcast.util.compressPicture.UploadPicturesUtil;
import cn.itcast.util.video.UploadVideoUtil;
import cn.itcast.util.video.ifImageVideo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.text.NumberFormat;
import java.util.*;

/**
 * @author Kite
 * @date 2020/5/1
 */
@Service
public class CommentServiceImpl implements CommentService {

    /**订单持久层**/
    @Autowired
    OrderDao orderDao;
    //七牛云存储空间名称
    private static final  String space="mugebl";

    @Autowired
    CommentDao commentDao;
    /**
     * 新增商品评论
     * @param productComment 评论对象
     * @return
     */
    @Override
    public Integer addComment(ProductComment productComment) throws IOException {

        //是否有视频标志位
        Boolean sign = false;

        //文件数组 0为视频 <0 为图片
        MultipartFile[] files = productComment.getFiles();


        //判断文件 [0]为是否有图片 0为没有 1为有 [1]为是否有视频 0为没有 1为有
        Integer[] judgmentFiles = judgmentFiles(files);
        if (judgmentFiles!=null ){
            if(judgmentFiles[1]==1){
                //前缀 为   data:image/jpeg;base64 则为图片
                MultipartFile prefix =  files[0];
                sign=true;
                String video = updateVideo(prefix.getInputStream());
                productComment.setVideoComment(video);
            }


            //设置当前时间为评论时间
            productComment.setCommentTime(new Date());
            //新增评论基本信息
            commentDao.addComment(productComment);
            //修改评论状态
            orderDao.updateProductState(null,5,productComment.getPurchaseId());

            //循环起点 有视频从1开始 无视频从0开始
            Integer begin = 0;
            //是否有视频
            if ( sign == true ){
                begin=1;
            }

            //判断是否有图片
            if (judgmentFiles!=null & judgmentFiles[0]==1){
                List<CommentImage> commentImages= new ArrayList<>();
                String[] images  = updateImages(files,begin);

                for (int i = 0; i <images.length ; i++) {
                    CommentImage commentImage = new CommentImage();
                    commentImage.setCommentPicture(images[i]);
                    commentImage.setCommentId(productComment.getCommentId());
                    commentImages.add(commentImage);
                }
                commentDao.addCommentImage(commentImages);
            }

        }else {
            //设置当前时间为评论时间
            productComment.setCommentTime(new Date());
            //新增评论基本信息
            commentDao.addComment(productComment);
            //修改评论状态
            orderDao.updateProductState(null,5,productComment.getPurchaseId());
        }

        return 1;
    }

    /**
     * 查询商品评论
     * @param productId 商品id
     * @param commentType 评论类型
     * @param currentPage 查询当前页
     * @param pageSize 每页查询数量
     * @return 评论对象
     */
    @Override
    public List<ProductComment> findComment(Integer productId, Integer commentType, Integer currentPage, Integer pageSize) {
        //开始页
        Integer start=(currentPage-1)*pageSize;
        List<ProductComment> footprints = commentDao.findAllComment(productId,commentType,start,pageSize);
        for (int i = 0; i <footprints.size() ; i++) {
            Boolean fign = footprints.get(i).getAnonymity();
            if (fign){
                footprints.get(i).setUserImage("http://img.isdfmk.xyz/iduyadfgjdekldjhf.png");
                footprints.get(i).setUserName("匿名用户");
            }
        }
        return footprints;
    }

    /**
     * 查询不同商品数量
     * @param productId 商品id
     * @return
     */
    @Override
    public CommentQuantity findCommentQuantity(Integer productId) {
        CommentQuantity commentQuantity = new CommentQuantity();
        //全部评论数量
        Integer allCommentQuantity = commentDao.findCommentQuantity(productId,0);
        //好评数量
        Integer goodCommentQuantity = commentDao.findCommentQuantity(productId,4);
        commentQuantity.setAllCommentQuantity(allCommentQuantity);
        commentQuantity.setImageCommentQuantity(commentDao.findCommentQuantity(productId,1));
        commentQuantity.setVideoCommentQuantity(commentDao.findCommentQuantity(productId,2));
        commentQuantity.setSecondCommentQuantity(commentDao.findCommentQuantity(productId,3));
        commentQuantity.setGoodCommentQuantity(goodCommentQuantity);
        commentQuantity.setOrdinaryCommentQuantity(commentDao.findCommentQuantity(productId,5));
        commentQuantity.setDifferenceCommentQuantity(commentDao.findCommentQuantity(productId,6));

        if(allCommentQuantity!=0){
            //计算好评度
            NumberFormat numberFormat = NumberFormat.getInstance();
            numberFormat.setMaximumFractionDigits(2);
            String result = numberFormat.format((float)goodCommentQuantity/(float)allCommentQuantity*100);
            Double goodCommentPercentage = Double.parseDouble(result);
            commentQuantity.setGoodCommentPercentage(goodCommentPercentage);

        }

        return commentQuantity;
    }


    /**
     * 添加追评
     * @param secondComment
     * @return
     * @throws IOException
     */
    @Override
    public Integer addSecondComment(SecondComment secondComment) throws IOException {
        //是否有视频标志位
        Boolean sign = false;

        //查询评论id
        Integer commentId = commentDao.findCommentId(secondComment.getPurchaseId());
        secondComment.setCommentId(commentId);

        //文件数组 0为视频 <0 为图片
        MultipartFile[] files = secondComment.getFiles();


        //判断文件 [0]为是否有图片 0为没有 1为有 [1]为是否有视频 0为没有 1为有
        Integer[] judgmentFiles = judgmentFiles(files);
        if (judgmentFiles!=null ){
            if(judgmentFiles[1]==1){
                //前缀 为   data:image/jpeg;base64 则为图片
                MultipartFile prefix =  files[0];
                sign=true;
                String video = updateVideo(prefix.getInputStream());
                secondComment.setVideoSecondComment(video);
            }


            //设置当前时间为评论时间
            secondComment.setSecondCommentTime(new Date());
            //新增评论基本信息
            commentDao.addSecondSecondComment(secondComment);
            //修改评论状态
            orderDao.updateProductState(null,6,secondComment.getPurchaseId());

            //循环起点 有视频从1开始 无视频从0开始
            Integer begin = 0;
            //是否有视频
            if ( sign == true ){
                begin=1;
            }

            //判断是否有图片
            if (judgmentFiles!=null & judgmentFiles[0]==1){
                List<SecondCommentImage> secondCommentImages= new ArrayList<>();
                String[] images  = updateImages(files,begin);
                for (int i = 0; i <images.length ; i++) {
                    SecondCommentImage secondCommentImage = new SecondCommentImage();
                    secondCommentImage.setSecondCommentPicture(images[i]);
                    secondCommentImage.setSecondCommentId(secondComment.getSecondCommentId());
                    secondCommentImages.add(secondCommentImage);
                }
                commentDao.addSecondCommentImage(secondCommentImages);
            }

        }else {
            //设置当前时间为评论时间
            secondComment.setSecondCommentTime(new Date());
            //新增评论基本信息
            commentDao.addSecondSecondComment(secondComment);
            //修改评论状态
            orderDao.updateProductState(null,6,secondComment.getPurchaseId());
        }
        return 1;
    }

    /**
     * 查询总页数跟评论数量
     * @param productId 商品Id
     * @param commentType 评论类型
     * @param pageSize 每页查询数量
     * @return
     */
    @Override
    public Integer[] fendTotalPage(Integer productId,Integer commentType , Integer pageSize) {
        Integer[] TotalPage=new Integer[2];
        Integer quantity = commentDao.findCommentQuantity(productId,commentType);
        int totalPage = (quantity % pageSize)  == 0 ? quantity/pageSize : (quantity/pageSize) + 1;
        TotalPage[0]=quantity;
        TotalPage[1]=totalPage;
        return TotalPage;
    }


    /**
     * 判断是否有视频
     * @param files
     * @return  [0]为是否有图片 0为没有 1为有 [1]为是否有视频 0为没有 1为有
     */
    public Integer[] judgmentFiles(MultipartFile[] files ) throws IOException {
        Integer[] result=new Integer[2];
        result[0]=0;
        result[1]=0;

        //是否有视频标志位
        Boolean sign = false;
        //判断文件是否为空
        if (files==null || files.length==0){
            result=null;
            return result;
        }
        MultipartFile prefix =  files[0];
        InputStream inputStream = prefix.getInputStream();
        //判断文件第一个是否是视频  true为图片 false为视频
        Boolean  prefixs= ifImageVideo.ifImageVideo(inputStream);
        if (!prefixs){
            sign=true;
            result[1]=1;
        }
        if (files.length>0 && sign == false || files.length>1){
            result[0]=1;
        }
        return result;
    }

    /**
     * 压缩上传视频
     * @param inputStream  视频流
     * @return 视频上传成功后的地址
     * @throws IOException
     */
    public String updateVideo(InputStream inputStream) throws IOException {
        //压缩视频 且返回视频地址 uuid为视频文件名
        String uuid = UUID.randomUUID().toString().replaceAll("-","");
        String video = UploadVideoUtil.UploadVideoUtil(space,uuid,inputStream);
        return video;
    }

    /**
     *  压缩上传图片
     * @param files base64数组
     * @param begin 循环开始 有视频从1开始 无视频从0开始
     * @return 上传成功后图片地址地址 购买编号集合
     * @throws IOException
     */
    public String[] updateImages(MultipartFile[] files,Integer begin) throws IOException {
        //新增评论图片
        String[] images= new String[files.length];
        for (int i = begin; i <files.length ; i++) {
            String uuids = UUID.randomUUID().toString().replaceAll("-","");
            //压缩图片 上传图片至七牛云 返回图片地址
            String Image = UploadPicturesUtil.UploadPicturesUtil(space,files[i].getInputStream(),uuids);
            if (begin==1){
                images[i-1]=Image;
            }else {
                images[i]=Image;
            }

        }
        return images;
    }


//    /**
//     * base64转InputStream
//     * @param prefix base64
//     * @return InputStream
//     * @throws IOException
//     */
//    @Override
//    public InputStream base64InputStream(String prefix) throws IOException {
//        //base64字符串
//        String file = null;
//        int prefixSize =prefix.indexOf(",")+1;
//        file = prefix.substring(prefixSize);
//        //将字符串转换为byte数组
//        byte[] bytes = new BASE64Decoder().decodeBuffer(file.trim());
//        //转化为输入流
//        ByteArrayInputStream inputStream = new ByteArrayInputStream(bytes);
//        return inputStream;
//    }


}
