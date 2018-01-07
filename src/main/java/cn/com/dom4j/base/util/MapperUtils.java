package cn.com.dom4j.base.util;

import org.apache.commons.lang3.StringUtils;
import org.junit.Test;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2017年12月26日
 * @desc
 */
public class MapperUtils {

    public static void main(String[] args) {
        String s = "name, cost, price, image_url, create_time, valid";

        getMapperField(s);
    }


    public static void getMapperField(String str) {

        str = StringUtils.trimToEmpty(str);

        str = str.replaceAll(" ", "");
        str = str.replaceAll("\n", "");

        String[] split = str.split(",");

        StringBuilder result = new StringBuilder();
        for (String s : split) {
            result.append("#{").append(s).append("}, ");
        }

        System.out.println(result.substring(0, result.length() - 2));
    }

}
