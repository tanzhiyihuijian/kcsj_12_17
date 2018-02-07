package cn.com.dom4j.base.service;

import cn.com.dom4j.base.model.User;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2017年12月25日
 * @desc
 */
public interface IUserService {

    int addUser(User user);

    User getUserByUserName(String username);
}
