package cn.com.dom4j.base.util;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.apache.commons.lang3.StringUtils;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2017年12月26日
 * @desc
 */
public class JsonUtils {

    public static Gson getGson(String pattern) {
        if (StringUtils.isEmpty(pattern)) {
            return new GsonBuilder().create();
        }
        return new GsonBuilder().setDateFormat(pattern).create();
    }

    public static Gson getGson() {
        return getGson(null);
    }

}
