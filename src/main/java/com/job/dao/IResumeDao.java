package com.job.dao;

import com.job.pojo.Resume;

import java.util.List;

public interface IResumeDao {
    /**
     * 简历更新
     * @param resume
     * @return
     */
    int resumeUpdate(Resume resume);

    /**
     * 简历添加
     * @param resume
     * @return
     */
    int resumeAdd(Resume resume);

    /**
     * 列出简历
     * @param resume
     * @return
     */
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
