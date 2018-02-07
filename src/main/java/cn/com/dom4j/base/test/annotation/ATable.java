package cn.com.dom4j.base.test.annotation;

import java.lang.annotation.*;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2018年01月28日
 * @desc
 */
@Target(ElementType.TYPE)
@Inherited
@Retention(RetentionPolicy.RUNTIME)
public @interface ATable {

    String name() default "";

}
