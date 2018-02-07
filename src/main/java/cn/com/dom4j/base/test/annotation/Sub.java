package cn.com.dom4j.base.test.annotation;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2018年01月28日
 * @desc
 */
@BTable
public class Sub extends Super implements AInterface{

    private int subX;
    public int subY;

    public Sub() {
    }

    private int subX() {
        return 3;
    }

    public int subY() {
        return 4;
    }

    @Override
    public void test() {
        System.out.println("666");
    }
}
