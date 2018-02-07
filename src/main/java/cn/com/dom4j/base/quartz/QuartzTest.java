package cn.com.dom4j.base.quartz;

import org.junit.Test;
import static org.quartz.JobBuilder.newJob;
import static org.quartz.TriggerBuilder.newTrigger;
import static org.quartz.SimpleScheduleBuilder.simpleSchedule;

import org.quartz.*;
import org.quartz.impl.StdSchedulerFactory;

import javax.ejb.Schedule;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2018年02月07日
 * @desc
 */

public class QuartzTest {

    @Test
    public void test1() {

        try {
            // 从调度程序工厂获取一个调度程序的实例
            Scheduler scheduler = StdSchedulerFactory.getDefaultScheduler();

            // 显示调度程序的名称 (这里会展示我们在 quartz.properties文件中的名称)
            System.out.println("schedulerName = " + scheduler.getSchedulerName());

            /**
             * 重要
             * 定义一个 job, 并绑定到我们自定义的 HelloJob的 class对象上
             * 这里并不会马上创建一个 HelloJob实例, 实例创建是在 scheduler安排任务触发执行时创建的
             * 这种实例也为后面使用 Spring集成提供了便利
             *
             */
            JobDetail jobDetail = newJob(HelloJob.class).withIdentity("job1", "group1").build();

            // 声明一个触发器, 现在就执行(schedule.start()方法开始调用的时候执行): 并且每间隔 2秒就执行一次
            Trigger trigger = newTrigger()
                    .withIdentity("trigger1", "group1")
                    .startNow()
                    .withSchedule(
                            simpleSchedule()
                                    .withIntervalInSeconds(2)
                                    .repeatForever())
                    .build();

            // 告诉 quartz使用定义的触发器 trigger安排执行任务 job
            scheduler.scheduleJob(jobDetail, trigger);

            // 启动任务调度程序, 内部机制是线程的启动
            scheduler.start();

            // 关闭任务调度程序, 如果不关闭, 调度程序 scheduler会一直运行
            scheduler.shutdown();

        } catch (SchedulerException e) {
            e.printStackTrace();
        }


    }




}
