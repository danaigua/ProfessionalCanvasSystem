package com.job.pojo;

import freemarker.template.SimpleList;

public class SalaryResult {
    private String addr;
    private String job;
    private String jobaveSalary;
    private String addraveSalary;
    private String talentGap;

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getJobaveSalary() {
        return jobaveSalary;
    }

    public void setJobaveSalary(String jobaveSalary) {
        this.jobaveSalary = jobaveSalary;
    }

    public String getAddraveSalary() {
        return addraveSalary;
    }

    public void setAddraveSalary(String addraveSalary) {
        this.addraveSalary = addraveSalary;
    }

    public String getTalentGap() {
        return talentGap;
    }

    public void setTalentGap(String talentGap) {
        this.talentGap = talentGap;
    }
}
