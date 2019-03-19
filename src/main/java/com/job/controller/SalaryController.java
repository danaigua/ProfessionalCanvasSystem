package com.job.controller;

import com.job.pojo.AnalyzeJob;
import com.job.pojo.AnalyzeSalary;
import com.job.service.impl.AnalyzeJobService;
import com.opensymphony.xwork2.ActionSupport;

import javax.annotation.Resource;

public class SalaryController extends ActionSupport {
    private AnalyzeJob analyzeJob;
    private AnalyzeSalary analyzeSalary;
    public AnalyzeSalary getAnalyzeSalary() {
        return analyzeSalary;
    }
    public void setAnalyzeSalary(AnalyzeSalary analyzeSalary) {
        this.analyzeSalary = analyzeSalary;
    }
    @Resource
    private AnalyzeJobService analyzeJobService;
    public AnalyzeJob getAnalyzeJob() {
        return analyzeJob;
    }
    public void setAnalyzeJob(AnalyzeJob analyzeJob) {
        this.analyzeJob = analyzeJob;
    }
    public String showSalaryByJobAndTime(){
        AnalyzeJob analyzeJob = analyzeJobService.showSalaryByJobAndTime(this.analyzeJob);

        return null;
    }
}
