package com.job.service;

import com.job.pojo.Resume;

import java.util.List;

public interface IResumeService {
    int resumeUpdate(Resume resume);
    int resumeAdd(Resume resume);
    Resume resumelist(Resume resume);
    /**
     * 在后台查出跟管理员有关的简历
     */
    List<Resume> findresumeByAdmin(String adminId);
    /**
     * 通过id查找
     * @param userId
     * @return
     */
    List<Resume> finResumeByUserId(Integer userId);

    /**
     * 通过简历id查找
     * @param resumeId
     * @return
     */
    Resume finResumeByResumeId(Integer resumeId);
}
