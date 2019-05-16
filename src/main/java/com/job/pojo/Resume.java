package com.job.pojo;

public class Resume {
    private int resumeId;
    private int userId;
    private String resumeUserName;    //投简历者的真实姓名
    private String resumeUsersex;     //投简历者的性别
    private String resumeBirthday;     //投简历者的生日
    private String resumeEducationBackground;  //投简历者的学历
    private String resumePositionApplied;   //投简历者的申请的职位
    private String resumeAddress;           //投简历者的住址
    private String almamater;               //投简历者的毕业学校
    private String englishLevel;               //投简历者的英语水平
    private String cpmputerLevel;   //投简历者的计算机水平
    private String major;           //投简历者的专业
    private String awards;          //投简历者的获得奖项
    private String workExperience;  //投简历者的工作经历
    private String userImage;       //投简历者的用户图片
    private String userTelephone;   //投简历者的手机号

    public int getResumeId() {
        return resumeId;
    }

    public void setResumeId(int resumeId) {
        this.resumeId = resumeId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getResumeUserName() {
        return resumeUserName;
    }

    public void setResumeUserName(String resumeUserName) {
        this.resumeUserName = resumeUserName;
    }

    public String getResumeUsersex() {
        return resumeUsersex;
    }

    public void setResumeUsersex(String resumeUsersex) {
        this.resumeUsersex = resumeUsersex;
    }

    public String getResumeBirthday() {
        return resumeBirthday;
    }

    public void setResumeBirthday(String resumeBirthday) {
        this.resumeBirthday = resumeBirthday;
    }

    public String getResumeEducationBackground() {
        return resumeEducationBackground;
    }

    public void setResumeEducationBackground(String resumeEducationBackground) {
        this.resumeEducationBackground = resumeEducationBackground;
    }

    public String getResumePositionApplied() {
        return resumePositionApplied;
    }

    public void setResumePositionApplied(String resumePositionApplied) {
        this.resumePositionApplied = resumePositionApplied;
    }

    public String getResumeAddress() {
        return resumeAddress;
    }

    public void setResumeAddress(String resumeAddress) {
        this.resumeAddress = resumeAddress;
    }

    public String getAlmamater() {
        return almamater;
    }

    public void setAlmamater(String almamater) {
        almamater = almamater;
    }

    public String getEnglishLevel() {
        return englishLevel;
    }

    public void setEnglishLevel(String englishLevel) {
        this.englishLevel = englishLevel;
    }

    public String getCpmputerLevel() {
        return cpmputerLevel;
    }

    public void setCpmputerLevel(String cpmputerLevel) {
        this.cpmputerLevel = cpmputerLevel;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getAwards() {
        return awards;
    }

    public void setAwards(String awards) {
        this.awards = awards;
    }

    public String getWorkExperience() {
        return workExperience;
    }

    public void setWorkExperience(String workExperience) {
        this.workExperience = workExperience;
    }

    public String getUserImage() {
        return userImage;
    }

    public void setUserImage(String userImage) {
        this.userImage = userImage;
    }

    public String getUserTelephone() {
        return userTelephone;
    }

    public void setUserTelephone(String userTelephone) {
        this.userTelephone = userTelephone;
    }
}
