package cn.itcast.dao;

import cn.itcast.domain.poribuctPageviews.PoribuctPageviews;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.Date;

/**
 * @author Kite
 * @date 2020/5/17
 */
@Repository
public interface ProductPageviewsDao {
    /**
     * 新增商品浏览量
     * @param poribuctPageviews 浏览商品对象
     * @return
     */
    public Integer addProductPageviews(PoribuctPageviews poribuctPageviews);

    /**
     * 查询用户三小时是否浏览过
     * @param date 当前时间
     * @param userIp 用户IP地址
     * @param productId 商品id
     * @return 是否访问
     */
    public Integer findProductPageviews(@Param("date") Date date,@Param("userIp") String userIp,@Param("productId")Integer productId);

    /**
     * 查询用户当天是否浏览过
     * @param userIp 用户ip
     * @return
     */
    public Integer findTodayProductPageviews(@Param("userIp") String userIp,@Param("productId")Integer productId);


}
