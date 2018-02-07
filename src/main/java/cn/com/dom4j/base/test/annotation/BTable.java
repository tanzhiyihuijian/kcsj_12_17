package cn.com.dom4j.base.test.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2018年01月28日
 * @desc
 */

@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
public @interface BTable {

    String name() default "";

}
