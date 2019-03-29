package com.job.dao;

import com.job.pojo.JobInfo;

import java.util.List;

public interface IJobInfoDao {
    public int addJobInfo(JobInfo jobInfo);
    //返回查询到的类型对象给前端
    public  List<JobInfo> showAllJob(JobInfo jobInfo);
    //如果查不出来的话就返回全部
    public List<JobInfo> selectAll();

}
