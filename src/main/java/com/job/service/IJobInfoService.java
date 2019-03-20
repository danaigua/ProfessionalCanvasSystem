package com.job.service;

import com.job.pojo.JobInfo;

import java.util.List;

public interface IJobInfoService {
    int addJobInfo(JobInfo jobInfo);

    /**
     *
     * @param jobInfo
     * @return
     * 对数据库的工作类型进行判断就返回全部的数据
     * 如果没有工作类型或者工作类型找不到
     * 搜索栏查询所有的有关类型的工作
     * 返回所有
     */
//    JobInfo IfTypeIsNull(JobInfo jobInfo);

    List<JobInfo> showAllJob(JobInfo jobInfo);

    List<JobInfo> selectAll(JobInfo jobInfo);
}
