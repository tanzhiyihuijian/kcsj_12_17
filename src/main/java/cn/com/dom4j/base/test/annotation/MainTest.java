package cn.com.dom4j.base.test.annotation;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.Arrays;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2018年01月28日
 * @desc
 */
public class MainTest {

    public static void main(String[] args) throws NoSuchMethodException {

        Class<Sub> subClass = Sub.class;

        System.out.println("----------------------- Field ------------------------");
        // getFields() 获取自身类及其父类的所有 public字段
        // getDeclaredFields() 获取一个类本身的所有字段 (包括 private)
        System.out.println(Arrays.toString(subClass.getFields()));
        System.out.println(Arrays.toString(subClass.getDeclaredFields()));
        System.out.println();


        System.out.println("------------------------ Method -------------------------");
        System.out.println(Arrays.toString(subClass.getMethods()));
        System.out.println(Arrays.toString(subClass.getDeclaredMethods()));
        System.out.println();


        System.out.println("------------------------ Constructor -------------------------");
        System.out.println(Arrays.toString(subClass.getConstructors()));
        System.out.println(Arrays.toString(subClass.getDeclaredConstructors()));
        System.out.println();


        System.out.println("---------- @BTable是否在 Sub类上 -----------------------------");
        System.out.println(subClass.isAnnotationPresent(BTable.class));
        System.out.println();

        System.out.println("---------- 获取 Sub类上的 @BTable注解, 如果没有, 则返回 null");
        System.out.println(subClass.getAnnotation(BTable.class));
        System.out.println();

        System.out.println("----------- 获取 Sub类上的所有注解 -----------------------------");
        System.out.println(Arrays.toString(subClass.getAnnotations()));
        System.out.println(Arrays.toString(subClass.getDeclaredAnnotations()));
        System.out.println();


        System.out.println("----------- 接口方法上的注解能否作用到实现类上");
        System.out.println(subClass.getMethod("test").getAnnotation(ITable.class));
        System.out.println();


        AInterface i = new Sub();
        System.out.println(AInterface.class.getMethod("test").getAnnotation(ITable.class));

        System.out.println(i.getClass().getMethod("test").getAnnotation(ITable.class));




    }


}
