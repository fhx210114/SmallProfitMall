package cn.xgtd.domain.homePage;

import java.io.Serializable;

/**
 * @author Kite
 * @date 2020/6/28
 */
public class SalesRanking implements Serializable {
    /**排名**/
    private  Integer ranking;
    /**商品名称**/
    private String productName;
    /**商品id**/
    private Integer productId;


    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public Integer getRanking() {
        return ranking;
    }

    public void setRanking(Integer ranking) {
        this.ranking = ranking;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }
}
