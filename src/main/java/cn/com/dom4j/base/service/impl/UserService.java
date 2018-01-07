package cn.com.dom4j.base.service.impl;

import cn.com.dom4j.base.dao.UserDao;
import cn.com.dom4j.base.model.User;
import cn.com.dom4j.base.service.IUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2017年12月25日
 * @desc
 */
@Service
public class UserService implements IUserService {

    @Resource(name = "userDao")
    private UserDao userDao;

    @Override
    public int addUser(User user) {
        int res = 0;
        try {
            res = userDao.addUser(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public User getUserByUserName(String username) {
        User user = null;
        try {
            user = userDao.getUserByUserName(username);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
}
