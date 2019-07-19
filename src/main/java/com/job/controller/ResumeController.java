package com.job.controller;

import com.job.pojo.Resume;
import com.job.service.impl.ResumeServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import javax.annotation.Resource;
import java.util.Map;

public class ResumeController extends ActionSupport {
    private Resume resume;
    private String info;
    private Integer id;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public Resume getResume() {
        return resume;
    }

    public void setResume(Resume resume) {
        this.resume = resume;
    }

    @Resource
    private ResumeServiceImpl resumeService;


    public String resumeUpdate(){
        int i = resumeService.resumeUpdate(resume);
        return SUCCESS;
    }

    /**
     * 简历添加
     * @return
     */
    public String resumeCreate(){
        if (resume.getJobId() == null || "".equals(resume.getJobId())){
            resume.setJobId(1);
        }
        int i = resumeService.resumeAdd(resume);

        return SUCCESS;
    }
    public String findResumeById(){
        Resume resume = resumeService.finResumeByResumeId(id);
        ActionContext actionContext = ActionContext.getContext();
        Map<String, Object> session = actionContext.getSession();
        session.put("resume", resume);
        return SUCCESS;
    }
    public String findResumeById1(){
        Resume resume = resumeService.finResumeByResumeId(id);
        ActionContext actionContext = ActionContext.getContext();
        Map<String, Object> session = actionContext.getSession();
        session.put("resume", resume);
        return SUCCESS;
    }
    public String findResumeById2(){
        Resume resume = resumeService.finResumeByResumeId(id);
        ActionContext actionContext = ActionContext.getContext();
        Map<String, Object> session = actionContext.getSession();
        session.put("resume1", resume);
        return SUCCESS;
    }
}
