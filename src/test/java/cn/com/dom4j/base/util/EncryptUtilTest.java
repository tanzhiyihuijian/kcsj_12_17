package cn.com.dom4j.base.util;

import org.junit.Test;

import static org.junit.Assert.*;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2018年01月29日
 * @desc
 */
public class EncryptUtilTest {

    @Test
    public void md5() {

        String password = "l3l3ww41602";

        System.out.println(EncryptUtil.md5(password));          // 302775F8AD42B6A4A75CB2220D05EF2
        System.out.println(EncryptUtil.MD5(password));          // 302775F8AD42B6A4A75CB2220CD05EF2



    }
}