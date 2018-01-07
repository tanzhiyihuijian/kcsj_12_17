package cn.com.dom4j.base.model;

import java.util.Date;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2017年12月26日
 * @desc 分类
 */
public class Category {

    private int id;
    private String name;
    private Date createTime;
    private String valid;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
