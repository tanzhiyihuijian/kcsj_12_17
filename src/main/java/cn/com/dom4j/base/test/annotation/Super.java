package cn.com.dom4j.base.test.annotation;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2018年01月28日
 * @desc
 */
@ATable
public class Super {

    private int superX;
    public int superY;

    public Super() {
    }

    private int superX() {
        return 1;
    }

    public int superY() {
        return 2;
    }

}
