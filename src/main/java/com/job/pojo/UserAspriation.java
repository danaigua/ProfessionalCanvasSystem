package com.job.pojo;

public class UserAspriation {
//    用户的期望
    private int userId;
    private int userAspriationId;
    private String userExpectSalary;
    private String userExpectSalary;
    private String userExpectAddress;
    private String userExpectJob;
    private String userExceptionJobType;//比如全职，兼职
    private String userAddress;
    private String userType;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getUserAspriationId() {
        return userAspriationId;
    }

    public void setUserAspriationId(int userAspriationId) {
        this.userAspriationId = userAspriationId;
    }

    public String getUserExpectSalary() {
        return userExpectSalary;
    }

    public void setUserExpectSalary(String userExpectSalary) {
        this.userExpectSalary = userExpectSalary;
    }

    public String getUserExpectAddress() {
        return userExpectAddress;
    }

    public void setUserExpectAddress(String userExpectAddress) {
        this.userExpectAddress = userExpectAddress;
    }

    public String getUserExpectJob() {
        return userExpectJob;
    }

    public void setUserExpectJob(String userExpectJob) {
        this.userExpectJob = userExpectJob;
    }

    public String getUserExceptionJobType() {
        return userExceptionJobType;
    }

    public void setUserExceptionJobType(String userExceptionJobType) {
        this.userExceptionJobType = userExceptionJobType;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }
}
