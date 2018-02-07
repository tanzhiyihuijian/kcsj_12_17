package cn.com.dom4j.base.annotation;

import java.lang.annotation.*;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2018年01月28日
 * @desc 演示自定义注解
 */


/**
 * 元注解: 指的是注解的注解, 包括 @Documented, @Target, @Inherited, @Retention 四种
 *
 * 1. @Documented 表明了这个注解应该被 javadoc工具记录
 *      默认情况下, javadoc是不包括注解的, 但如果申明时指定了 @Documented, 那么它就会被 javadoc之类的工具处理,
 *      所以注解类型信息也会被包括在生成的文档中.
 *
 * 2. @Target 用于设定注解的使用范围, Target通过 ElementType来指定注解可使用范围的枚举集合
 *      取值如下:
 *          ElementType.METHOD                  可用于方法上
 *          ElementType.TYPE                    可用于类或接口上
 *          ElementType.ANNOTATION_TYPE         可用于注解类型上 (被 @interface修饰的类型)
 *          ElementType.CONSTRUCTOR             可用于构造方法上
 *          ElementType.FIELD                   可用于字段上
 *          ElementType.LOCAL_VARIABLE          可用于局部变量上
 *          ElementType.PACKAGE                 用于记录 java文件的 package信息
 *          ElementType.PARAMETER               可用于参数上
 *
 *
 * 3. @Inherited 表明了某个被标注的类型是被继承的
 *      如果一个使用了 @Inherited修饰的 Annotation类型被用于一个类, 那么这个 Annotation将被用于该 class的子类
 *      注意:
 *        1. @Inherited annotation类型是被标注过的 class的子类所继承. 类并不从它所实现的接口继承 annotation
 *              方法并不从它所从重载的方法继承 annotation
 *        2. 当 @Inherited annotation类型标注的 annotation的 Retention是 RetentionPolicy.RUNTIME, 则反射 API增强了这种继承性
 *              如果我们使用 java.lang.reflect去查询一个 @Inherited annotation类型的 annotation时, 反射代码将展开工作:
 *              检查 class和其父类, 直到指定的 annotation类型被发现, 或者到达类继承结构的顶层
 *
 *
 * 4. @Retention (保留)注解说明到 Java类的哪个阶段, 有三个值
 *      * RetentionPolicy.SOURCE    这种类型的注解只会在源码级别保留, 编译时就会被忽略
 *      * RetentionPolicy.CLASS     这种类型的注解在编译时会被保留, 在 class文件中存在, 但 JVM将会忽略
 *      * RetentionPolicy.RUNTIME   这种类型的注解会被 JVM保留, 所以它们能在运行时被 JVM或其它使用反射机制的代码所读取和使用
 *
 *
 * 5. @Repeatable 重复注解, 允许在同一申明类型(类, 属性或方法上多次使用同一个注解)
 *
 *
 */

@Documented
@Target({ElementType.METHOD, ElementType.FIELD})
@Inherited
@Retention(RetentionPolicy.RUNTIME)
public @interface DataSourceSelector {

    String value();

}
