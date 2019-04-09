package com.job.pojo;

public class AnalyzeJob {
    private Integer serviceId;
    private String job;
    private String jobAge;
    private String jobAddr;
    private String jobWorktime;
    private int Salary1;
    private int Salary2;

    public int getSalary1() {
        return Salary1;
    }

    public void setSalary1(int salary1) {
        Salary1 = salary1;
    }

    public int getSalary2() {
        return Salary2;
    }

    public void setSalary2(int salary2) {
        Salary2 = salary2;
    }

    public Integer getServiceId() {
        return serviceId;
    }

    public void setServiceId(Integer serviceId) {
        this.serviceId = serviceId;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getJobAge() {
        return jobAge;
    }

    public void setJobAge(String jobAge) {
        this.jobAge = jobAge;
    }

    public String getJobAddr() {
        return jobAddr;
    }

    public void setJobAddr(String jobAddr) {
        this.jobAddr = jobAddr;
    }

    public String getJobWorktime() {
        return jobWorktime;
    }

    public void setJobWorktime(String jobWorktime) {
        this.jobWorktime = jobWorktime;
    }
}
