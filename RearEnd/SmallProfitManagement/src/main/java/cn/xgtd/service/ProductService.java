package cn.xgtd.service;

import cn.xgtd.domain.product.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;

/**
 * @author Kite
 * @date 2020/6/6
 */
public interface ProductService {


    /**
     * 查询商品总数量跟页数
     * @param pageSize
     * @return
     */
    public Integer[] fendTotalPage(Integer pageSize);


    /**
     * 查询商品详细
     * @return 商品详细数据
     */
    public List<ProductDetails> findDetails(Integer currentPage,Integer pageSize);


    /**
     * 查询商品分类
     * @return
     */
    public List<ProductCategory> findCategory();

    /**
     * 添加商品
     * @param productDetails 商品对象
     * @return
     */
    public ProductDetails  addProduct(ProductDetails productDetails) throws IOException;

    /**
     * 修改商品价格 销量
      * @param productDistinctions 商品配置详细
     * @return
     */
    public Integer updateDetails( List<ProductDistinction> productDistinctions);
    /**
     * 查询所有商品属性种类
     * @return
     */
    public List<AttributeType> findAttributeType();

    /**
     * 编辑商品
     * @param productDetails 商品对象
     * @return
     */
    public ProductDetails updateProduct(ProductDetails productDetails) throws IOException;

    /**
     * 修改商品配置
     * @param productId 商品id
     * @param productDetails 配置信息
     */
    public void updateProductContexts(Integer productId ,List<ProductContext>  productDetails);

    /**
     * 商品上架下级
     * @param productId 商品id
     * @param state 上架或下级
     * @return
     */
    public Integer updateProductState(Integer productId , Boolean state);


    /**
     * 删除商品
     * @param productId 商品id
     * @return
     */
    public Integer deleteProduct(Integer productId);

}
