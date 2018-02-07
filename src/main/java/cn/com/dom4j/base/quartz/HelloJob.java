package cn.com.dom4j.base.quartz;

import org.joda.time.DateTime;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2018年02月07日
 * @desc
 */
public class HelloJob implements Job {

    @Override
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {
        System.out.println("现在是北京时间: " + DateTime.now().toString("yyyy-MM-dd HH:mm:ss") + " -> HelloJob 任务执行!");
    }




}
