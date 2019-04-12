package com.job.controller;

import com.job.pojo.JobInfo;
import com.job.service.impl.JobInfoServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

import javax.annotation.Resource;
import java.util.List;

public class JobController extends ActionSupport {
    private List<JobInfo> jobs;
    private List<JobInfo> jobs2;

    private JobInfo jobInfo;

    public List<JobInfo> getJobs2() {
        return jobs2;
    }

    public void setJobs2(List<JobInfo> jobs2) {
        this.jobs2 = jobs2;
    }

    public JobInfo getJobInfo() {
        return jobInfo;
    }

    public void setJobInfo(JobInfo jobInfo) {
        this.jobInfo = jobInfo;
    }

    public List<JobInfo> getJobs() {
        return jobs;
    }

    public void setJobs(List<JobInfo> jobs) {
        this.jobs = jobs;
    }

    @Resource
    private JobInfoServiceImpl JobService;
    //返回数据给搜索栏
    public String showAllJob(){
            jobs = JobService.selectAll();
        return SUCCESS;
    }
    //返回校招的所以求职信息
    public String selectTypeButeSchool(){
        jobs2 = JobService.selectTypeButeSchool();
        return SUCCESS;
    }
}
