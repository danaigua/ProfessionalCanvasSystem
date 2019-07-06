package com.job.controller;

import com.job.pojo.Resume;
import com.job.service.impl.ResumeServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

import javax.annotation.Resource;

public class ResumeController extends ActionSupport {
    private Resume resume;

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
        int i = resumeService.resumeAdd(resume);
        System.out.println(1111111111);
        return SUCCESS;
    }
}
