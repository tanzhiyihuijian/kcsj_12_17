package cn.com.dom4j.web.controller;

import org.junit.runner.RunWith;
import org.springframework.test.annotation.Commit;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2018年01月26日
 * @desc Controller 单元测试 基础类
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({ "classpath*:applicationContext.xml", "classpath*: spring-mvc/servlet-context.xml" })
//@TransactionConfiguration(transactionManager = "springTransactionManager", defaultRollback = false)

@Rollback(false)
@Commit
@Transactional(transactionManager = "springTransactionManager")
public abstract class BaseControllerTest {


}
