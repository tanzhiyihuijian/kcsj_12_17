package cn.com.dom4j.base.service;

import cn.com.dom4j.base.model.User;
import org.springframework.stereotype.Service;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2017年12月25日
 * @desc
 */
@Service
public interface IUserService {

    int addUser(User user);

    User getUserByUserName(String username);
}
