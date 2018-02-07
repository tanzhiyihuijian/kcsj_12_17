package cn.com.dom4j.base.entity;

import java.util.Date;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2018年02月02日
 * @desc 角色 bean
 */
public class Role {

    private int id;
    private String name;
    private String description;
    private String valid;
    private Date createTime;

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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getValid() {
        return valid;
    }

    public void setValid(String valid) {
        this.valid = valid;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
