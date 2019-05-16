package com.job.service.impl;

import com.job.dao.IResumeDao;
import com.job.pojo.Resume;
import com.job.service.IResumeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("resumeDisposeServiceImpl")
public class ResumeDisposeServiceImpl implements IResumeService {
    @Resource
    private IResumeDao iResumeDao;

    public int resumeUpdate(Resume resume) {
        return 0;
    }

    public int resumeAdd(Resume resume) {
        return 0;
    }

    public Resume resumelist(Resume resume) {
        return null;
    }
}
