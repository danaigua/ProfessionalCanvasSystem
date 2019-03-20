package com.job.dao;

import com.job.pojo.JobInfo;

import java.util.List;

public interface IJobInfoDao {
    public int addJobInfo(JobInfo jobInfo);
    //返回查询到的类型对象给前端
    public  List<JobInfo> showAllJob(JobInfo jobInfo);
    //查询type是不是存在，如果不存在的话就返回全部的工作
    public  int SelectType(JobInfo jobInfo);
    //如果查不出来的话就返回全部
    public List<JobInfo> selectAll(JobInfo jobInfo);
    //判断Type是不是空的
//    public JobInfo IfTypeIsNull(JobInfo jobInfo);
}
