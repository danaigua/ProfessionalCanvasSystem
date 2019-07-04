package com.job.pojo;

public class Resume {
    private int resumeId;
    private int userId;
    private String resumeBirthday;  //投简历者的生日
    private String resumeNation;
    private String resumePositionApplied;   //投简历者的申请的职位
    private String almamater;               //投简历者的毕业学校
    private String englishLevel;    //投简历者的英语水平
    private String computerLevel;   //投简历者的计算机水平
    private String major;           //投简历者的专业
    private String awards;          //投简历者的获得奖项
    private String workExperience;  //投简历者的工作经历
    private String userImage;       //投简历者的用户图片


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

    public String getResumeBirthday() {
        return resumeBirthday;
    }

    public void setResumeBirthday(String resumeBirthday) {
        this.resumeBirthday = resumeBirthday;
    }

    public String getResumeNation() {
        return resumeNation;
    }

    public void setResumeNation(String resumeNation) {
        this.resumeNation = resumeNation;
    }

    public String getResumePositionApplied() {
        return resumePositionApplied;
    }

    public void setResumePositionApplied(String resumePositionApplied) {
        this.resumePositionApplied = resumePositionApplied;
    }

    public String getAlmamater() {
        return almamater;
    }

    public void setAlmamater(String almamater) {
        this.almamater = almamater;
    }

    public String getEnglishLevel() {
        return englishLevel;
    }

    public void setEnglishLevel(String englishLevel) {
        this.englishLevel = englishLevel;
    }

    public String getComputerLevel() {
        return computerLevel;
    }

    public void setComputerLevel(String computerLevel) {
        this.computerLevel = computerLevel;
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
}

