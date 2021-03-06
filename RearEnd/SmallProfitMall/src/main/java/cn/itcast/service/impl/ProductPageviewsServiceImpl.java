package cn.itcast.service.impl;

import cn.itcast.dao.ProductDao;
import cn.itcast.dao.ProductDetailsDao;
import cn.itcast.dao.ProductPageviewsDao;
import cn.itcast.domain.poribuctPageviews.PoribuctPageviews;
import cn.itcast.service.ProductPageviewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * @author Kite
 * @date 2020/5/17
 */
@Service
public class ProductPageviewsServiceImpl implements ProductPageviewsService {

    /**商品浏览量持久层**/
    @Autowired
    ProductPageviewsDao productPageviewsDao;

    /**商品持久层**/
    @Autowired
    ProductDetailsDao productDetailsDao;
    /**
     * 新增商品浏览量
     * @param poribuctPageviews 浏览记录对象
     * @return
     */
    @Override
    public Integer addProductPageviews(PoribuctPageviews poribuctPageviews){
        poribuctPageviews.setBrowseTime(new Date());
        //用户ip
        String userIp = poribuctPageviews.getUserIp();
        //商品id
        Integer productId = poribuctPageviews.getProductId();

        //获取4小时前时间
        Calendar  dar=Calendar.getInstance();
        dar.add(java.util.Calendar.HOUR_OF_DAY, -4);
        //查询三小时内是否访问 1则访问过 0 则无
       Integer firstPageviews =  productPageviewsDao.findProductPageviews( dar.getTime(),userIp,productId);
       //查询一天该用户访问该商品访问次数 大于三次则不增加
       Integer todayProductPageviews = productPageviewsDao.findTodayProductPageviews(userIp,productId);
        if (firstPageviews==0 && todayProductPageviews<3){
            //商品新增浏览记录
            productPageviewsDao.addProductPageviews(poribuctPageviews);
            //商品访问加一
            productDetailsDao.updateProductPageviews(poribuctPageviews.getProductId());
        }

        return 1;
    }
}
