package com.job.service.impl;


import com.job.dao.IJobInfoDao;
import com.job.pojo.JobInfo;
import com.job.service.IJobInfoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("JobService")
public class JobInfoServiceImpl implements IJobInfoService {
    @Resource
    private IJobInfoDao iJobInfoDao;
    public int addJobInfo(JobInfo jobInfo) {
        return iJobInfoDao.addJobInfo(jobInfo);
    }
}
