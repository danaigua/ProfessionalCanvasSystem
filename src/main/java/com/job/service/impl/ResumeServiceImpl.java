package com.job.service.impl;

import com.job.dao.IResumeDao;
import com.job.service.IResumeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("resumeServiceImpl")
public class ResumeServiceImpl implements IResumeService {
    @Resource
    private IResumeDao iResumeDao;
}
