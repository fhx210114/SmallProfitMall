package cn.itcast.service.impl;

import cn.itcast.dao.*;
import cn.itcast.domain.accountSettings.AccountSettings;
import cn.itcast.domain.address.Address;
import cn.itcast.domain.favorite.Evaluation;
import cn.itcast.domain.member.ConsumptionRecords;
import cn.itcast.domain.news.News;
import cn.itcast.domain.order.Order;
import cn.itcast.domain.order.OrderQuantity;
import cn.itcast.domain.order.ProductContent;
import cn.itcast.domain.shoppingCar.ProductInventoryType;
import cn.itcast.domain.shoppingCar.PurchaseInformation;
import cn.itcast.domain.shoppingCar.ShoppingCart;
import cn.itcast.messageQueue.producer.shopping.ShoppingProducer;
import cn.itcast.service.*;
import cn.itcast.skd.AlipayConfig;
import cn.itcast.util.encryption.AesEncryptUtil;
import com.alibaba.fastjson.JSONObject;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.domain.OrderItem;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.alipay.api.request.AlipayTradeRefundRequest;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.sql.Array;
import java.text.SimpleDateFormat;
import java.util.*;

import static com.alipay.api.AlipayConstants.SIGN_TYPE;

/**
 * @author Kite
 * @date 2020/4/3
 */
@Service
public class OrderServiceImpl implements OrderService {

    /**订单持久层**/
    @Autowired
    private OrderDao orderDao;

    /**购物车持久层**/
    @Autowired
    private ShoppingCartDao shoppingCartDao;

    /**商品详细业务层**/
    @Autowired
    private ProductDetailsDao productDetailsDao;

    /**购物车业务层**/
    @Autowired
    private ShoppingCartService shoppingCartService;

    /**用户账户持久层**/
    @Autowired
    private AccountSettingsDao accountSettingsDao;

    /**人脸识别业务层**/
    @Autowired
    private FaceRecognitionService faceRecognitionService;

    //用于新增消息
    @Autowired
    NewsDao newsDao;

    /**
     * 用于查询用户账户信息（余额）
     */
    @Autowired
    private MemberDao memberDao;

    /**地址业务层**/
    @Autowired
    public AddressService addressService;

    /**
     * 用于查询用户邮箱
     */
    @Autowired
    private EmailDao emailDao;

    /**
     * 用于发送邮件
     */
    @Autowired
    ShoppingProducer shoppingProducer;


    /**
     * 用于推送消息
     */
    @Autowired
    NewsService newsService;

    /**
     *添加购物车订单
     * @param userId 用户id
     * @param shoppingCartId 购物车id
     * @return 返回订单号
     */
    @Override
    public Map addOrder(String userId, Integer[] shoppingCartId) {
        Map map =new HashMap();

        Order order= new Order();

        //生成订单id
        String orderId = generateOrderId();
        order.setOrderTime(new Date());
        //初始购物车id
        Integer[] initialize=shoppingCartId;

        //将购物车中商品信息添加到订单商品信息 返回总价格 返回库存是否充足
        Map maps = addProduct(initialize,orderId);
        Boolean inventorys= (Boolean) maps.get("inventorys");
        //库存不充足返回不充足商品信息
        if (!inventorys){
            List<ProductInventoryType> productInventoryTypes= (List<ProductInventoryType>) maps.get("productInventoryTypeList");
            map.put("productInventoryTypes",productInventoryTypes);
            return map;
        }
        BigDecimal orderTotes = (BigDecimal) maps.get("orderNotes");

        //设置总计
        order.setOrderTotal(orderTotes);
        //设置用户id
        order.setUserId(userId);
        //设置订单时间
        order.setOrderTime(new Date());
        //设置订单号
        order.setOrderId(orderId);
        //订单状态 1代表未付款
        order.setOrderState(1);
        //数据库新增
        orderDao.addOrder(order);
        map.put("orderId" ,orderId);
        return map;

    }

    /**
     * 直接购买结算订单结算
     * @param purchaseInformation 商品对象
     * @return
     */
    @Override
    public String purchaseOrder(PurchaseInformation purchaseInformation){

        Order order= new Order();
        //数据库取商品价格名字
        PurchaseInformation purchaseInformation1 =  shoppingCartDao.findByPid(purchaseInformation.getProductId());
        //创建商品详细信息
        ProductContent productContent = new ProductContent();
        //生成订单id
        String orderId = generateOrderId();
        //设置商品名字
        productContent.setProductName(purchaseInformation1.getProductName());
        //设置商品图片
        productContent.setProductImage(productDetailsDao.findProductImage(purchaseInformation.getProductId()));

        //设置订单id
        productContent.setOrderId(orderId);
        //设置商品id
        productContent.setProductId(purchaseInformation.getProductId());
        //设置是否评价
        productContent.setEvaluate(false);
        //商品配置 价格
        Map map = shoppingCartService.fenProductDeploy(purchaseInformation);
        String productDeploy = (String) map.get("productDeploys");
        Double productPrice = (Double) map.get("productPrice");
        //设置商品价格
        productContent.setProductPrice(productPrice);
        //设置商品配置
        productContent.setProductConfiguration(productDeploy);
        //设置商品配置id
        productContent.setDistinctionId(purchaseInformation.getDistinctionId());
        //设置商品购买数量
        productContent.setProductQuantity(purchaseInformation.getQuantity());
        //设置商品重量
        productContent.setProductWeight(purchaseInformation1.getProductWeight());

        //添加到订单商品信息表
        orderDao.addProductContent(productContent);

        //计算商品总价-------------------------------------------------------------------
        //单价

        BigDecimal productPrice1=new BigDecimal(Double.toString(productPrice));
        //数量
        BigDecimal Quantity=new BigDecimal(String.valueOf(purchaseInformation.getQuantity()));
        //乘法计算
        BigDecimal total =productPrice1.multiply(Quantity);
        //设置总计
        order.setOrderTotal(total);

        //-------------------------------------------------------------------
        //设置用户id
        order.setUserId(purchaseInformation.getUserId());
        //设置订单时间
        order.setOrderTime(new Date());
        //订单状态 1代表未付款
        order.setOrderState(1);
        //设置订单号
        order.setOrderId(orderId);
        //数据库新增
        orderDao.addOrder(order);

        //库存减购买数量
        List<ProductContent> productContents = new ArrayList<>();
        productContents.add(productContent);
        Map map1 = findProductInventorys(productContents);
       Boolean result = (Boolean) map1.get("sign");
        if (!result){
            return "false";
        }
        return orderId;
    }

    /**
     * 查询订单信息
     * @param userId 用户id
     * @param orderId 订单id
     * @return
     */
    @Override
    public Order findOrder(String userId, String orderId) {
        return orderDao.findOrder(userId,orderId);
    }

    /**
     * 支付密码支付 ------------------------------------支付---------------------------
     * @param userId 用户id
     * @param paymentPassword 用户支付密码
     * @return 是否正确
     */
    @Override
    public Integer verificationPay(String userId,String orderId, String paymentPassword) throws Exception {
        AccountSettings accountSettings =accountSettingsDao.findAccountSettings(userId);
        String password = accountSettings.getPaymentPassword();
        //解密
       String sqlPassword = AesEncryptUtil.desEncrypt(password);
        if (sqlPassword.equals(paymentPassword)){
            Boolean redis = walletPay(userId,orderId);
            if (!redis){
                return  3;
            }
            //查询订单详细内容
            Order order = findDetailedOrder(null,orderId);
            //推送订单消息
            updateOrderType(order);
            return 1;
        }else {
            return 2;
        }
    }

    /**
     * 人脸支付
     * @param image 人脸图片
     * @param userId 用户id
     * @param videoFile 人脸视频
     * @return
     */
    @Override
    public String verificationFace(String image, String userId, InputStream videoFile,String orderId) throws Exception {
        //解密人脸
        image=AesEncryptUtil.desEncrypt(image);
        //进行人脸检测
        String verification = faceRecognitionService.faceVerification(image,videoFile);
        String result = "SUCCESS";
        //判断是否通过活体检测
        if (!result.equals(verification)){
        return verification;
        }
        //查询用户人脸toke
        AccountSettings accountSettings = accountSettingsDao.findAccountSettings(userId);
        String results = faceRecognitionService.faceCheck(accountSettings.getFaceToken(),image);
        if (!result.equals(results)){
            return results;
        }
        //查询订单信息
        Order order =  orderDao.findOrder(userId,orderId);
        //推送消息
        updateOrderType(order);
        return result;
    }

    /**
     * 支付宝支付
     * @param userId 用户id
     * @param orderId 订单id
     * @param request
     * @return 支付页面
     * @throws Exception
     */
    @Override
    public String alipayPay(String userId, String orderId,HttpServletRequest request) throws Exception {
        //查询订单信息
        Order orders =  orderDao.findOrder(userId,orderId);
        //订单名称
        String productName="";
        for (int i = 0; i <orders.getProductContents().size() ; i++) {
            String productNames = orders.getProductContents().get(i).getProductName();
            //省略号
            String omit="";
            if (productNames.length()>10){
                omit="...";
            }
            //截取字符串前6位
            productNames = productNames.substring(0,10);
            //拼接最后名称
            productName=productName+productNames+omit+" "+" ";
            if (i>3){
                break;
            }
        }
            //支付页面
            String pay = doPay(orders.getOrderId() , orders.getOrderTotal().toString(),productName ,request);
            return pay;
    }

    /**
     * 提交订单 结算 --------------------------------------------------
     * @param order 订单对象
     * @return 1为支付成功 2 为余额不足
     */
    @Override
    public String confirmOrder(Order order, HttpServletRequest request) throws Exception {
        //确认订单
        orderDao.confirmOrder(order);
        //转换地址
        Address address = addressService.ordersDefaults(order.getAddress());
        //添加订单地址
        orderDao.addOrdeAddress(order.getOrderId(),address);

        return "1";
    }


    /**
     * 查询详细订单
     * @param userId 用户id
     * @param orderId 订单号
     * @return 订单对象
     */
    @Override
    public Order findDetailedOrder(String userId, String orderId){
        Order order = orderDao.findDetailedOrder(userId,orderId);
        return order;
    }

    /**
     * 查询不同订单数量
     * @param userId
     * @return
     */
    @Override
    public OrderQuantity findClassifyOrderQuantity(String userId) {
        OrderQuantity quantity = new OrderQuantity();
        quantity.setOrderAllQuantity(orderDao.fendOrderQuantity(userId,0));
        quantity.setOrderUnpaidQuantity(orderDao.fendOrderQuantity(userId,1));
        quantity.setOrderPaidQuantity(orderDao.findProductQuantity(userId,2));
        quantity.setEvaluateQuantity(orderDao.findProductQuantity(userId,3));
        quantity.setSalesReturnQuantity(orderDao.findProductQuantity(userId,4));
        return quantity;
    }

    /**
     * 查询指定类型订单
     * @param userId 用户id
     * @param orderState 订单状态 0为查所有订单 1为查询待付款订单 2为查询待收货订单 3为待评价订单 4为退货
     * @return 订单分类集合
     */
    @Override
    public List<Order> findAllOrder(String userId ,Integer orderState,
                                    Integer currentPage, Integer pageSize) {
        //开始页
        Integer start=(currentPage-1)*pageSize;
        //查询商品集合 2未查询付款商品
        List<Order> orders = orderDao.findAllOrder(userId,orderState,start,pageSize);
        return orders;
    }

    /**
     * 确认收货
     * @param purchaseId 购买id
     * @return
     */
    @Override
    public Integer updateReceive( Integer purchaseId,String orderId,String userId) {
        int quantity = orderDao.findOrderTakeQuantity(orderId);
        if (quantity==1){
            //修改订单状态为待评价 1为未支付订单 2为待收货 3为待评论 4为售后
            orderDao.updateOrderState(userId,orderId,3);
        }

        //根据购买状态查询商品id跟商品数量
        ProductContent productContent =  orderDao.findPurchase(purchaseId);
        //修改订单商品状态为待评价状态 1为待发货 2为待收货 3为已收货待评论 4为维修 5为追评论 6为已追评论
        orderDao.updateProductState(orderId,3,purchaseId);
        //修改商品销量
        productDetailsDao.updateProductSales(productContent.getProductId(),productContent.getProductQuantity());
        return 1;
    }

    /**
     * 删除订单
     * @param userId 用户id
     * @param orderId 订单id
     * @return
     */
    @Override
    public Integer deleteOrder(String userId, String orderId) {
        return orderDao.deleteOrder(userId,orderId);
    }

    /**
     * 删除订单中的商品
     * @param productState 商品状态
     * @param id 商品id
     * @param userId 用户id
     * @param deleteAll 删除标志位 true为删除全部 false为删除指定订单
     * @return
     */
    @Override
    public Integer deleteProduct(Integer productState,String userId ,Integer[] id, Boolean deleteAll) {
        return orderDao.deleteProduct(productState,userId,id,deleteAll);
    }







    /**
     * 生成订单号 时间戳加当天流水号
     * 取当天最后一笔订单的流水号加一
     * 今天第一笔订单流水号为1000000
     * @return
     */
    @Override
    public String generateOrderId(){
        String initialId="100000";
        //获取当前时间戳
        Long timeStamp = System.currentTimeMillis();
        //获取今天最后一个订单号
        String orderIds=orderDao.findSerialnumber();
        //若为今天第一个订单 则为000000
        if (null==orderIds||"".equals(orderIds)){
            orderIds=initialId;
        }
        //截取最后六位
        Integer Serialnumber =Integer.parseInt(orderIds.substring(orderIds.length() -6,orderIds.length()));
        //订单号
        Integer orderId1 = Serialnumber+1;
        String orderId =timeStamp.toString()+orderId1;
        return orderId;
    }

    /**
     * 查询商品库存是否充足
     * @param shoppingCarts 商品详细信息
     * @return 库存是否充足  true为充足且减去库存数量
     */
    @Override
    public Map findProductInventorys(List<ProductContent>  shoppingCarts) {


        //集合数量
        Integer ListQuantity = shoppingCarts.size();
        //配置id
        Integer[] distinctionId = new Integer[ListQuantity];
        //数量
        Integer[] productQuantity = new Integer[ListQuantity];
        //商品名称
        String [] productName = new String[ListQuantity];
        //查询库存是否充足
        for (int i = 0; i <shoppingCarts.size(); i++) {
            distinctionId[i] = shoppingCarts.get(i).getDistinctionId();
            productName[i] = shoppingCarts.get(i).getProductName();
            productQuantity[i] = shoppingCarts.get(i).getProductQuantity();
        }
        List<Double> productContents = productDetailsDao.findProductInventory(distinctionId);
        Boolean sign = true;
        List<ProductInventoryType> productInventoryTypeList = new ArrayList<>();
        Map map = new HashMap();
        //库存不足 添加库存不足商品到集合
        for (int i = 0; i <productContents.size() ; i++) {
            if (productContents.get(i)<productQuantity[i]){
                ProductInventoryType productInventoryType = new ProductInventoryType();
                productInventoryType.setProductId(distinctionId[i]);
                productInventoryType.setProductName(productName[i]);
                productInventoryType.setProductInventory(new Double(productContents.get(i)).intValue());
                productInventoryTypeList.add(productInventoryType);
                sign=false;
            }
        }
        //库存充足减去购买的数量
        if (!sign) {
            map.put("sign",sign);
            map.put("productInventoryTypeList",productInventoryTypeList);
            return map;
        } else {
            for (int i = 0; i < distinctionId.length; i++) {
                productDetailsDao.updateProductInventory(distinctionId[i], shoppingCarts.get(i).getProductQuantity());
            }
            map.put("sign",sign);
            map.put("productInventoryTypeList",productInventoryTypeList);
            return map;
        }

    }

    /**
     * 购物车商品信息添加到订单
     * @param initialize 购物车id数组
     * @param orderId 订单id
     * @return inventorys库存是否充足 true为充足 否则为false , orderNotes为订单总价
     */
    @Override
    public Map addProduct (Integer[] initialize , String orderId){
        //取出购物车id数组
        List<Integer> shoppingCartIdList = Arrays.asList(initialize) ;
        //商品总计
        BigDecimal orderNotes=new BigDecimal("0.00");

        List<ProductContent> productContents=new ArrayList<>();
        //将购物车商品新增设置到订单中
        for (Integer shoppingCartIds : shoppingCartIdList){
            //创建商品详细信息
            ProductContent productContent = new ProductContent();
            //查询购物车集合
            List<ShoppingCart> shoppingCart= shoppingCartDao.findShoppingCart(null,shoppingCartIds);
            ShoppingCart shoppingCart1 = shoppingCart.get(0);
            PurchaseInformation purchaseInformation1 =  shoppingCartDao.findByPid(shoppingCart1.getProductId());
            //设置商品名字
            productContent.setProductName(shoppingCart1.getProductName());
            //设置商品图片
            productContent.setProductImage(shoppingCart1.getImageSite());
            //设置商品价格
            productContent.setProductPrice(shoppingCart1.getProductPrice());
            //计算总和
            Double productPrice = shoppingCart1.getProductPrice();

            //单价
            String price  = Double.toString(shoppingCart1.getProductPrice());
            BigDecimal productPrice1=new BigDecimal(price);
            //数量
            BigDecimal Quantity=new BigDecimal(String.valueOf(shoppingCart1.getQuantity()));
            //乘法运算
            BigDecimal total =productPrice1.multiply(Quantity);

            orderNotes = orderNotes.add(total);
            //设置订单id
            productContent.setOrderId(orderId);
            //设置是否评价
            productContent.setEvaluate(false);
            //设置商品配置
            productContent.setProductConfiguration(shoppingCart1.getProductDeploy());
            //设置商品重量
            productContent.setProductWeight(purchaseInformation1.getProductWeight());
            //设置商品购买数量
            productContent.setProductQuantity(shoppingCart1.getQuantity());
            //设置商品id
            productContent.setProductId(shoppingCart1.getProductId());
            //设置配置id
            productContent.setDistinctionId(shoppingCart1.getDistinctionId());

            productContents.add(productContent);

            //添加到订单商品信息表
         //   orderDao.addProductContent(productContent);
            //删除该购物车购物车
          //  shoppingCartDao.deleteCart(shoppingCartIds);
        }
        //验证库存 库存充足返回true且减去库存
        Map findProductInventoryMap = findProductInventorys(productContents);
        Boolean result = (Boolean) findProductInventoryMap.get("sign");
        List<ProductInventoryType> productInventoryTypes= (List<ProductInventoryType>) findProductInventoryMap.get("productInventoryTypeList");
        Map map = new HashMap();
        map.put("productInventoryTypeList",productInventoryTypes);
        map.put("inventorys",result);
        map.put("orderNotes",orderNotes);
        if (!result){
         return map;
        }

        //批量添加商品信息
        orderDao.addListProduct(productContents);
        //批量删除购物车
        shoppingCartDao.deleteListCart(initialize);


        return map;
    }


    /**
     * 支付成功
     * @param order
     * @return
     */
    @Override
    public void updateOrderType(Order order) throws Exception {
        //修改所以商品状态为待发货 1为待发货 2为待收货 3为已收货待评论 4为维修 5为追评论 6为已追评论
        orderDao.updateProductState(order.getOrderId(),2,null);
        //设置支付状态为已支付待发货状态（2）(3)已发货状态
        order.setOrderState(2);
        //设置当前时间为支付时间
        order.setPaymentTime(new Date());
        //修改支付状态 支付时间
        orderDao.updateOrderPayState(order.getUserId(),order.getOrderId(),order.getOrderState(),order.getPaymentTime());
        //添加支付记录
        addConsumptionRecords(order);
        //邮件消息消息中间件通知
        emailNotification(order.getUserId());
        //转换订单总计类型
        String  total =  order.getOrderTotal().setScale(2, BigDecimal.ROUND_HALF_UP).toString();
        //order 订单 total订单总计
        Date date = new Date();
        String strDateFormat = "yyyyMMdd";
        String strDateFormats = "yyyy-MM-dd";
        SimpleDateFormat sdf = new SimpleDateFormat(strDateFormat);
        String dates =sdf.format(date);

        //更新今日总销量
        Double totas = orderDao.findDayTotal(dates);

        SimpleDateFormat sdfs = new SimpleDateFormat(strDateFormats);
        String dates1 =sdfs.format(date);
        //修改订单
        orderDao.updateDayTotal(totas,dates1+" "+"00:00:00");

        //订单消息中间件推送消息
        notificationUser(order,total);
    }


    /**
     * 支付成功用于发送邮件
     * @param userId
     * @return
     * @throws Exception
     */
    @Override
    public Integer emailNotification(String userId) throws Exception {

        //发送邮件
        String email = emailDao.fendByIdEmail(userId);
        if (email!=null &&! "".equals(email)){
            //解密邮箱
            email=AesEncryptUtil.desEncrypt(email);
            String[] msg = {email,"您已成功购买商品"};
            //消息中间件推送
            shoppingProducer.sendShoppingInformation("email",msg);
            return 1;
        }else {
            return 2;
        }
    }

    /**
     * 支付成功 推送订单消息
     * @param order 订单内容
     * @param totals 订单总计
     * @return
     * @throws Exception
     */
    @Override
    public Integer notificationUser(Order order,String totals) throws Exception {
        String orderJson = JSONObject.toJSONString(order);
        JSONObject  jsonObject =JSONObject.parseObject(orderJson);

        //推送购买信息
        shoppingProducer.sendShoppingInformation("news",jsonObject);
        return 1;
    }


    /**
     * 修改订单
     * @param order 订单对象
     * @return
     */
    @Override
    public Integer updateOrder(Order order) {
        order.setChangeQuantity(1);
        return orderDao.updateOrder(order);
    }

    /**
     * 查询订单修改次数
     * @param userId 用户id
     * @param orderId 订单id
     * @return 修改次数
     */
    @Override
    public Integer fenOrderTotal(String userId, String orderId) {
        return orderDao.findChangeQuantity(userId,orderId);
    }


    /**
     * 用户余额是否充足
     * @param userId 用户id
     * @param orderId 订单id
     * @return 充足返回true 不足返回false
     * @throws Exception
     */
    public Boolean walletPay(String userId,String orderId) throws Exception {
        //查询用户余额
        String encryptionBalance = memberDao.findBalance(userId);
        if (encryptionBalance==null){
            encryptionBalance = "nUOli9QRvUPflIt/kg9mOQ==";
        }
        //获取订单总计
        String totals = totals = orderDao.fenOrderTotal(userId, orderId);
        //解密余额
        String decodeBalances = AesEncryptUtil.desEncrypt(encryptionBalance);
        BigDecimal balance = new BigDecimal(decodeBalances);
        BigDecimal total = new BigDecimal(totals);
        //保留两位小数
        int scale = 2;
        //相减结果
        String difference = balance.subtract(total).setScale(scale, BigDecimal.ROUND_HALF_UP).toString();
        double value = Double.valueOf(difference.toString());
        //判断用户余额是否充足
        if (value < 0) {
            return false;
        } else {
            //加密剩余余额
            String balances = AesEncryptUtil.encrypt(difference);
            //跟新账户余额
            memberDao.updateBalance(userId, balances);
            return true;
        }
    }
    //支付宝付款
    public String doPay(String orderId ,String total , String name ,HttpServletRequest request) throws Exception {

        request.setCharacterEncoding("UTF-8");
        //获得初始化的AlipayClient
        AlipayClient alipayClient = new DefaultAlipayClient(

                AlipayConfig.gatewayUrl,

                AlipayConfig.app_id,

                AlipayConfig.merchant_private_key, "json",

                AlipayConfig.charset,

                AlipayConfig.alipay_public_key,

                AlipayConfig.sign_type);

        //设置请求参数

        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();

        alipayRequest.setReturnUrl(AlipayConfig.return_url);

        alipayRequest.setNotifyUrl(AlipayConfig.notify_url);


        alipayRequest.setBizContent("{\"out_trade_no\":\"" + orderId + "\","

                + "\"total_amount\":\"" + total + "\","

                + "\"subject\":\"" + name + "\","

                + "\"body\":\"" + "cs" + "\","

                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");

        //给支付宝发送请求进行支付操作
        String result = alipayClient.pageExecute(alipayRequest).getBody();

        return result;

    }


    /**
     * 推送消息
     * @param orders 订单对象
     * @throws IOException
     */
    @Override
    public void push(Order orders) throws IOException {
        //添加商品信息
        orders.setProductContents(orderDao.fendOrderProduct(orders.getOrderId()));

        //添加订单消息内容
        News news = setNews(orders.getUserId(),"1",4,
                4,"确认订单消息","消息简介",orders.getOrderId());
        //新增消息
        newsDao.addNews(news);

        //设置零钱通知
        News newsConsumptionRecords  = setNews(orders.getUserId(),"1",3,
                3,"支付通知","支付通知",orders.getOrderId());
        //将消息零钱内容新增到数据库
        newsDao.addNews(newsConsumptionRecords);

        //初始化消息对象集合
        List<News> newsList =new ArrayList();

        //查询订单消息-------------------------------------------
        News orderNews = newsDao.fenNewsById(news.getContentId());

        //查询订单详细信息 转为json
        Order orderss=orderDao.findDetailedOrder(orders.getUserId(),orders.getOrderId());
        String jsonObjects = JSONObject.toJSONString(orderss);

        orderNews.setNewsContentJson(JSONObject.parseObject(jsonObjects));
        orderNews.setNewsContent(null);
        //将订单消息添加到集合种
        newsList.add(orderNews);

        //----------------------------------------------

        //查询零钱消息-------------------------------------------
        News consumptionRecordss = newsDao.fenNewsById(newsConsumptionRecords.getContentId());

        //查询零钱详细 装为json
        ConsumptionRecords consumptionRecords= memberDao.findConsumptionRecords(orders.getUserId(),orders.getOrderId());
        String jsonConsumptionRecords = JSONObject.toJSONString(consumptionRecords);

        consumptionRecordss.setNewsContentJson(JSONObject.parseObject(jsonConsumptionRecords));
        consumptionRecordss.setNewsContent(null);
        newsList.add(consumptionRecordss);

        //未读消息数量
        Integer unreadQuantity =  newsService.unreadQuantity(orders.getUserId());
        //推送消息 三秒后推送
//        try {
            Integer result = 0;
//        //推送失败 丛连推送
//        if (result!=1) {
//            //最多尝试次数
//            Integer maximum = 6;
//            Boolean sign = true;
//            while (sign) {
//            try
//            {
//                Thread.sleep(50);
                result = newsService.pushNews(newsList,orders.getUserId(),unreadQuantity);
//            }
//            catch (InterruptedException e)
//            {
//                e.printStackTrace();
//            }
//                maximum--;
//                if (result == 1 || maximum == 0) {
//                    sign = false;
//                }
//            }
//        }
//        } catch (IOException e) {
//        }catch (NullPointerException e){
//
//        }
    }

    /**
     * 设置消息对象
     * @param userId 用户id
     * @param newsStatus 消息状态
     * @param senderId 发送消息者id
     * @param newsType 消息类型
     * @param Title 消息标题
     * @param Introduction 消息简介
     * @param orderId 订单id
     * @return 消息对象
     */
    public News setNews(String userId,String newsStatus,Integer senderId,Integer newsType,String Title,String Introduction,String orderId) {
        //添加消息内容
        News news = new News();
        //设置用户id
        news.setUserId(userId);
        //设置消息状态
        news.setNewsStatus(newsStatus);
        //设置消息发送者id 4为订单助手
        news.setSenderId(senderId);
        //设置消息种类
        news.setNewsType(newsType);
        //设置消息发送时间
        news.setNewsTime(new Date());
        //设置消息标题
        news.setTitle(Title);
        //设置消息标志位
        news.setSign(false);
        //设置消息简介
        news.setIntroduction(Introduction);
        //设置消息类型id
        news.setNewsTypeId(orderId);
        return news;
    }

    /**
     * 添加支付记录
     * @param order 订单对象
     */
      public Integer addConsumptionRecords(Order order){
          //设置支付通知的内容
          ConsumptionRecords consumptionRecords=new ConsumptionRecords();
          //订单id
          consumptionRecords.setOrderId(order.getOrderId());
          //用户id
          consumptionRecords.setUserId(order.getUserId());
          //订单状态
          consumptionRecords.setPaymentStatus(1);
          //消息类型
          consumptionRecords.setSenderId("3");
          //支付时间
          consumptionRecords.setPaymentTime(new Date());
          //支付金额
          consumptionRecords.setPaymentAmount(order.getOrderTotal().setScale(2, BigDecimal.ROUND_HALF_UP).toString());
          //添加零钱记录
          Integer result = memberDao.addConsumptionRecords(consumptionRecords);
          return result;
      }



//    //退款
//    public String Stringrefunds(HttpServletResponse httpResponse, HttpServletResponse response, HttpSession session, String oid)throws IOException, AlipayApiException {
//        response.setContentType("text/html;charset=utf-8");
//        PrintWriter out = response.getWriter();
//        httpResponse.setCharacterEncoding("UTF-8");
//        //获得初始化的AlipayClient
//        AlipayClient alipayClient = new DefaultAlipayClient(
//
//                AlipayConfig.gatewayUrl,
//
//                AlipayConfig.app_id,
//
//                AlipayConfig.merchant_private_key, "json",
//
//                AlipayConfig.charset,
//
//                AlipayConfig.alipay_public_key,
//
//                AlipayConfig.sign_type);
//        //设置请求参数
//        AlipayTradeRefundRequest alipayRequest = new AlipayTradeRefundRequest();
//        Orde r order = orderService.get(Integer.parseInt(oid));
//        OrderItem orderItem = orderItemService.getOrderItem(order);
//        //商户订单号，必填
//        String out_trade_no = new String(order.getOrderCode());
//        //需要退款的金额，该金额不能大于订单金额，必填
//        String refund_amount = String.valueOf(orderItem.getNumber() * orderItem.getProduct().getPromotePrice());
//        //标识一次退款请求，同一笔交易多次退款需要保证唯一，如需部分退款，则此参数必传
//        String out_request_no = order.getOrderCode();
//        alipayRequest.setBizContent("{\"out_trade_no\":\"" + out_trade_no + "\","
//                + "\"trade_no\":\"" + order.getAliCode() + "\","
//                + "\"refund_amount\":\"" + refund_amount + "\","
//                + "\"out_request_no\":\"" + out_request_no + "\"}");
//        //请求
//        String result = alipayClient.execute(alipayRequest).getBody();
//        //输出
//        out.println(result);
//
//
//    }


    /**
     *
     * 查询总页数跟总订单数量
     * @param userId 用户id
     * @param orderState 订单类型
     * @param pageSize 每页数量
     * @return
     */
    @Override
    public Integer[] fendTotalPage(String userId,Integer orderState, Integer pageSize) {
        Integer[] TotalPage=new Integer[2];
        Integer quantity=0;
        //查询全部订单跟未支付订单数量
        quantity = orderDao.fendOrderQuantity(userId,orderState);

        int totalPage = (quantity % pageSize)  == 0 ? quantity/pageSize : (quantity/pageSize) + 1;
        TotalPage[0]=quantity;
        TotalPage[1]=totalPage;
        return TotalPage;
    }



}
