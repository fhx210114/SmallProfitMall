package cn.itcast.domain.order;

import java.io.Serializable;

/**
 * @author Kite
 * @date 2020/4/3
 */
public class ProductContent implements Serializable {
    //id
    private int id;
    //订单id
    private String orderId;
    //商品名字
    private String productName;
    //商品图片
    private String productImage;
    //商品价格
    private Double productPrice;
    //商品配置
    private String productConfiguration;
    //购买数量
    private Integer productQuantity;
    //商品重量
    private String productWeight;
    //是否评价
    private Boolean evaluate;
    //商品状态 1为未发货 2为已确认收货
    public Integer productState;

    public Integer getProductState() {
        return productState;
    }

    public void setProductState(Integer productState) {
        this.productState = productState;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(Double productPrice) {
        this.productPrice = productPrice;
    }

    public Boolean getEvaluate() {
        return evaluate;
    }

    public void setEvaluate(Boolean evaluate) {
        this.evaluate = evaluate;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public String getProductConfiguration() {
        return productConfiguration;
    }

    public void setProductConfiguration(String productConfiguration) {
        this.productConfiguration = productConfiguration;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Integer getProductQuantity() {
        return productQuantity;
    }

    public void setProductQuantity(Integer productQuantity) {
        this.productQuantity = productQuantity;
    }

    public String getProductWeight() {
        return productWeight;
    }

    public void setProductWeight(String productWeight) {
        this.productWeight = productWeight;
    }

    @Override
    public String toString() {
        return "ProductContent{" +
                "orderId=" + orderId +
                ", productName='" + productName + '\'' +
                ", productImage='" + productImage + '\'' +
                ", productPrice=" + productPrice +
                ", productConfiguration='" + productConfiguration + '\'' +
                ", productQuantity=" + productQuantity +
                ", evaluate=" + evaluate +
                '}';
    }
}
