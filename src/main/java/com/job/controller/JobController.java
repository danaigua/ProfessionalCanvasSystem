package com.job.controller;

import com.job.pojo.JobInfo;
import com.job.service.impl.JobInfoServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

import javax.annotation.Resource;
import java.util.List;

public class JobController extends ActionSupport {
    private List<JobInfo> jobs;
    private JobInfo jobInfo;

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
        if ((jobInfo.getType().equals(""))) {
            jobs = JobService.selectAll(jobInfo);
        }else {
            jobs = JobService.showAllJob(jobInfo);
        }
        return SUCCESS;
    }
    //跳转到搜索页面
    public String gotoSearchjsp(){
//        JobInfo jobInfo1 = JobService.IfTypeIsNull(this.jobInfo);
        return SUCCESS;
    }
}
