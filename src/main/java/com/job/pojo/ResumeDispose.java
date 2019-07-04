package com.job.pojo;

/**
 * 简历处理类
 */
public class ResumeDispose {
    private int resumeDisposeId;
    private int resumeId;
    private int userId;
    private String adminId;
    private String resumeDisposeSchedule;

    public int getResumeDisposeId() {
        return resumeDisposeId;
    }

    public void setResumeDisposeId(int resumeDisposeId) {
        this.resumeDisposeId = resumeDisposeId;
    }

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

    public String getAdminId() {
        return adminId;
    }

    public void setAdminId(String adminId) {
        this.adminId = adminId;
    }

    public String getResumeDisposeSchedule() {
        return resumeDisposeSchedule;
    }

    public void setResumeDisposeSchedule(String resumeDisposeSchedule) {
        this.resumeDisposeSchedule = resumeDisposeSchedule;
    }
}
