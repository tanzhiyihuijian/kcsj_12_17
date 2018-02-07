package cn.com.dom4j.base.util;

import org.apache.commons.collections.CollectionUtils;

import java.security.MessageDigest;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2018年01月29日
 * @desc 加密工具类
 */
public class EncryptUtil {

    // MD5加密

    /**
     * 生成 32位的 md5码
     * @param str 需要加密的字符串
     * @return 32位的加密过后的字符串
     */
    public static String md5(String str) {

        try {
            // 得到一个信息摘要器   (md5 和 MD5 作用相同)
            MessageDigest digest = MessageDigest.getInstance("md5");
            byte[] bytes = digest.digest(str.getBytes());

            // 将字节数组转换成十六进制的字符串
            return bytes2Hex(bytes);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }


    public static String MD5(String str) {

        char[] hexDigits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

        try {

            // 获取 md5摘要算法的 MessageDigest 对象
            MessageDigest digest = MessageDigest.getInstance("md5");

            // 使用指定字节更新摘要
            digest.update(str.getBytes());

            // 获取密文
            byte[] md = digest.digest();

            // 把密文转成十六进制的字符串形式
            char[] cs = new char[md.length * 2];

            int j = 0;
            for (byte b : md) {
                cs[j++] = hexDigits[b >>> 4 & 0xf];
                cs[j++] = hexDigits[b & 0xf];
            }
            return new String(cs);

        } catch (Exception e) {
            return null;
        }
    }


    /**
     * 将字节数组转换成十六进制的字符串
     * @param bytes 字节数组
     * @return 字节数组的十六进制的字符串表示
     * @desc
     *
     *  1. 计算机数据存储机制
     *      正数存储的是 二进制原码   负数存储的是 二进制补码   补码是负数的绝对值反码加加一
     *
     *
     *      原码:
     *      补码:
     *      反码:
     *
     *
     *
     *  2. 按位与 (&)
     *      规则: 只有两个操作数对应位同为 1时, 结果为 1, 其余全为 0;
     *      eg: 十进制: 10     &   12      ->  8
     *          二进制: 1010   &   1100    ->  1000
     *  tips:
     *    1) 1000 0000
     *
     *    0010 1010
     *    1111 1111
     *    0010 1000
     *
     *
     *    byte类型取值范围:  -127 ~ 178    ()
     *    0xff 1111 1111 (2^7 + 2^6 + ... + 2^1 + 1^0 = 2^ 8 - 1 = 255)
     *
     */
    public static String bytes2Hex(byte[] bytes) {

        if (bytes == null || bytes.length == 0) {
            return "";
        }

        StringBuilder des = new StringBuilder();
        for (byte b : bytes) {
            String tmp = Integer.toHexString(b & 0xff);
            if (tmp.length() == 1) {
                des.append("0");
            }
            des.append(tmp);
        }

        return des.toString();
    }
}
