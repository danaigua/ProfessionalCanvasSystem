package com.job.pojo;

public class JobInfo {
    //公司
    private String Company;
    //部门
    private String Department;
    //薪资区间
    private String Salary;
    //工作
    private String Job;
    //福利
    private String Welfare;
    //学历
    private String Academic;
    //岗位描述
    private String Descrive;
    //地址
    private String Address;
    //类型
    private String type;
    //id
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCompany() {
        return Company;
    }

    public void setCompany(String company) {
        Company = company;
    }

    public String getDepartment() {
        return Department;
    }

    public void setDepartment(String department) {
        Department = department;
    }

    public String getJob() {
        return Job;
    }

    public void setJob(String job) {
        Job = job;
    }


    public String getSalary() {
        return Salary;
    }

    public void setSalary(String salary) {
        Salary = salary;
    }


    public String getWelfare() {
        return Welfare;
    }

    public void setWelfare(String welfare) {
        Welfare = welfare;
    }

    public String getAcademic() {
        return Academic;
    }

    public void setAcademic(String academic) {
        Academic = academic;
    }

    public String getDescrive() {
        return Descrive;
    }

    public void setDescrive(String descrive) {
        Descrive = descrive;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }
}
