package cn.com.dom4j.base.dao.mapper;

import cn.com.dom4j.base.dynamic.DataSource;
import cn.com.dom4j.base.model.User;
import org.springframework.stereotype.Repository;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2017年12月25日
 * @desc
 */
@Repository
public interface UserMapper {

    @DataSource("kcsjDataSource")
    int addUser(User user);

    @DataSource("kcsjDataSource")
    User getUserByUserName(String username);

}
