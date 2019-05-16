package com.job.service;

import com.job.pojo.Resume;

public interface IResumeService {
    int resumeUpdate(Resume resume);
    int resumeAdd(Resume resume);
    Resume resumelist(Resume resume);
}
