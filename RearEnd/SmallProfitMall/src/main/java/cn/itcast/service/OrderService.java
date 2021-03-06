package cn.itcast.service;

import cn.itcast.domain.order.Order;
import cn.itcast.domain.order.OrderQuantity;
import cn.itcast.domain.order.ProductContent;
import cn.itcast.domain.shoppingCar.PurchaseInformation;
import org.apache.ibatis.annotations.Param;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.sql.Array;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @author Kite
 * @date 2020/4/3
 */
public interface OrderService {
    /**
     * 添加订单
     * @param userId 用户id
     * @param shoppingCartId 购物车id
     * @return
     */
    public Map addOrder(String userId, Integer[] shoppingCartId);

    /**
     * 直接购买订单结算
     * @param purchaseInformation
     * @return
     */
    public String purchaseOrder(PurchaseInformation purchaseInformation);

    /**
     * 查询订单信息
     * @param userId 用户id
     * @param orderId 订单id
     * @return
     */
    public Order findOrder(String userId ,String orderId);

    /**
     * 验证支付密码支付
     * @param userId 用户id
     * @param paymentPassword 用户支付密码
     * @return 是否正确
     */
    public Integer verificationPay(String userId,String orderId, String paymentPassword) throws Exception;

    /**
     * 验证人脸支付
     * @param image 人脸图片
     * @param userId 用户id
     * @param videoFile 人脸视频
     * @return
     */
    public String verificationFace(String image, String userId, InputStream videoFile,String orderId) throws Exception;


    /**
     * 支付宝支付
     * @param userId 用户id
     * @param orderId 订单id
     * @return 支付宝收银台
     */
    public String alipayPay(String userId,String orderId, HttpServletRequest request) throws Exception;

    /**
     * 确认订单
     * @param order 订单对象
     * @return 是否成功
     */
    public String confirmOrder(Order order, HttpServletRequest request) throws Exception;


    /**
     * 异步回调付款成功
     * @param order
     * @throws Exception
     */
    public void updateOrderType(Order order) throws Exception;

    /**
     * 查询订单详细
     * @param userId 用户id
     * @param orderId 订单id
     * @return 订单对象
     */
    public Order findDetailedOrder(String userId,String orderId);

    /**
     * 查询不同订单数量
     * @param userId
     * @return
     */
    public OrderQuantity findClassifyOrderQuantity(String userId);


    /**
     * 查询订单分类
     * @param userId 用户id
     * @param orderState 订单状态 0为查所有订单 1为查询待付款订单 2为查询待收货订单 3为待评价订单 4为退货
     * @return 订单集合
     */
    public List<Order> findAllOrder(String userId ,Integer orderState,
                                    Integer currentPage, Integer pageSize);

    /**
     * 确认收货
     * @param purchaseId 购买id
     * @return
     */
    public Integer updateReceive( Integer purchaseId,String orderId,String userId);

    /**
     * 删除订单
     * @param userId 用户id
     * @param orderId 订单id
     * @return
     */
    public Integer  deleteOrder(String userId, String orderId);

    /**
     * 删除商品
     * @param productState 商品状态
     * @productState userId
     * @param userId 用户id
     * @param id 商品id
     * @param deleteAll 删除标志位 true为删除全部 false为删除指定订单
     * @return
     */
    public Integer deleteProduct(Integer productState,String userId ,Integer[] id, Boolean deleteAll);




    /**
     * 生成订单号 时间戳加当天流水号
     * 取当天最后一笔订单的流水号加一
     * 今天第一笔订单流水号为1000000
     * @return
     */
    public String generateOrderId();

    /**
     * 购物车商品信息添加到订单
     * @param initialize 购物车id数组
     * @param orderId 订单id
     * @return map  inventorys库存是否充足 true为充足 否则为false , orderNotes为订单总价
     */
    public Map addProduct (Integer[] initialize , String orderId);

    /**
     * 查询商品库存是否充足
     * @param shoppingCarts 商品详细信息
     * @return 库存是否充足  true为充足且减去库存数量
     */
    public Map findProductInventorys( List<ProductContent>  shoppingCarts);


    /**
     * 支付成功用于发送邮件
     * @param userId
     * @return
     * @throws Exception
     */
    public Integer emailNotification(String userId) throws Exception;

    /**
     * 支付成功 推送订单消息
     * @return
     * @throws Exception
     */
    public Integer notificationUser(Order order,String totals) throws Exception;



    /**
     * 修改订单
     * @param order 订单对象
     * @return
     */
    public Integer updateOrder(Order order) throws Exception;

    /**
     * 查询订单修改次数
     * @param userId 用户id
     * @param orderId 订单id
     * @return 修改次数
     */
    public Integer fenOrderTotal(String userId ,String orderId);


    /**
     * 推送消息
     * @param orders 订单对象
     * @throws IOException
     */
    public void push(Order orders) throws IOException;

    /**
     * 查询订单总页数更总数量
     * @param userId 用户id
     * @param pageSize 每页数量
     * @return 0为订单总数量 1为每页总数量
     */
    public Integer[] fendTotalPage(String userId,Integer orderState, Integer pageSize);

}
