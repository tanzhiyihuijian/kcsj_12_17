package cn.com.dom4j.base.dynamic;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2017年11月08日
 * @desc 用于持有当前线程中使用的数据源标识
 */
public class DynamicDataSourceHolder {

    /**
     * 注意: 数据源标识保存在线程变量中, 避免多线程操作数据源时互相干扰
     */
    private static final ThreadLocal<String> THREAD_DATA_SOURCE = new ThreadLocal<>();

    public static void setDataSource(String dataSource) {
        THREAD_DATA_SOURCE.set(dataSource);
    }

    public static String getDataSource() {
        return THREAD_DATA_SOURCE.get();
    }

    public static void clearDataSource() {
        THREAD_DATA_SOURCE.remove();
    }


}
