package cn.com.dom4j.base.service;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2018年01月21日
 * @desc 基础测试 Service类
 */


/**
 *
 * RunWith 注解
 *
 * 1. RunWith 是 JUnit的一个常用注解, 用于指定 测试运行器
 *      要弄清楚什么是 测试运行器, 首先要明白几个概念: 测试方法, 测试类, 测试集, 测试运行器
 *        其中 测试方法是使用 @Test注解的一些方法
 *             测试类是包含一个或多个测试方法的 **Test.java文件
 *             测试集是一个 suite, 可能包含多个测试类
 *             测试运行器则决定了用什么方式偏好去运行这些测试集/类/方法
 * 2. 常见的运行器有
 *  1) @RunWith(Parameterized.class) 参数化运行器, 配合 @Parameters使用 Junit的参数化功能
 *  2) @RunWith(Suite.class)
 *   + @SuiteClasses(ATest.class, BTest.lass, CTest.class)  测试集运行器配合使用测试集功能
 *  3) @RunWith(Junit4.class) Junit4的默认运行器
 *  4) @RunWith(Junit38ClassRunner.class) 用于兼容 Junit3.8的运行器
 *  5) 一些其他运行器具备更多功能, 例如 @RunWith(SpringJunit4ClassRunner.class) 继集成 Spring的一些功能
 *
 *
 *
 * ContextConfiguration 注解
 *  用于加载配置文件
 *      locations (default value) 属性用于加载配置文件, 多个配置文件之间用逗号隔开
 *      classes 属性用于加载配置类, 多个配置类之间用逗号隔开
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath*:applicationContext.xml"})
public abstract class BaseServiceTest {


}
