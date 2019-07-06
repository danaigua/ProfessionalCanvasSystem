package com.job.service.impl;

import com.job.dao.IResumeDao;
import com.job.pojo.Resume;
import com.job.service.IResumeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("resumeDisposeServiceImpl")
public class ResumeDisposeServiceImpl implements IResumeService {
    @Resource
    private IResumeDao iResumeDao;

    public int resumeUpdate(Resume resume) {
        return iResumeDao.resumeUpdate(resume);
    }

    public int resumeAdd(Resume resume) {
        return iResumeDao.resumeAdd(resume);
    }

    public Resume resumelist(Resume resume) {
        return iResumeDao.resumelist(resume);
    }

    public List<Resume> findresumeByAdmin(String adminId) {
        return iResumeDao.findresumeByAdmin(adminId);
    }

    public List<Resume> finResumeByUserId(Integer userId) {
        return iResumeDao.finResumeByUserId(userId);
    }

    public Resume finResumeByResumeId(Integer resumeId) {
        return iResumeDao.finResumeByResumeId(resumeId);
    }
}
