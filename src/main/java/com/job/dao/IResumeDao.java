package com.job.dao;

import com.job.pojo.Resume;

public interface IResumeDao {
    int resumeUpdate(Resume resume);
    int resumeAdd(Resume resume);
    Resume resumelist(Resume resume);
}
