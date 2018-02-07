package cn.com.dom4j.base.service.impl;

import cn.com.dom4j.base.model.User;
import javafx.application.Application;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.Date;

import static org.junit.Assert.*;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2018年01月21日
 * @desc
 */
public class UserServiceTest {

    private ApplicationContext ctx = null;

    @Before
    public void setUp() {
        ctx = new ClassPathXmlApplicationContext("classpath*:applicationContext.xml");
    }

    @Test
    public void addUser() {

        User user = new User();
        user.setNickname("test-nickname");
        user.setPassword("test-password");

        UserService userService = (UserService) ctx.getBean("userService");
        Assert.assertNotNull(userService);
    }

    @After
    public void tearDown() {
    }

    @Test
    public void getUserByUserName() {
    }
}