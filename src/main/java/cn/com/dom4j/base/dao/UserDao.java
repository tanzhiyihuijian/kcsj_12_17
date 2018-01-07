package cn.com.dom4j.base.dao;

import cn.com.dom4j.base.dao.mapper.UserMapper;
import cn.com.dom4j.base.model.User;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2017年12月25日
 * @desc
 */
@Repository
public class UserDao {

    @Resource(name = "userMapper")
    private UserMapper mapper;

    public int addUser(User user) {
        return mapper.addUser(user);
    }

    public User getUserByUserName(String username) {
        return mapper.getUserByUserName(username);
    }

}
