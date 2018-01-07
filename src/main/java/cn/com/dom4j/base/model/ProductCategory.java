package cn.com.dom4j.base.model;

import java.util.Date;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2017年12月26日
 * @desc 商品分类对照表
 */
public class ProductCategory {

    private int id;
    private int productId;
    private int categoryId;
    private Date createTime;
    private String valid;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getValid() {
        return valid;
    }

    public void setValid(String valid) {
        this.valid = valid;
    }
}
