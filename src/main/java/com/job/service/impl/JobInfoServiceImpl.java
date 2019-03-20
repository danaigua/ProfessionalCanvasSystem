package com.job.service.impl;


import com.job.dao.IJobInfoDao;
import com.job.pojo.JobInfo;
import com.job.service.IJobInfoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("JobService")
public class JobInfoServiceImpl implements IJobInfoService {
    @Resource
    private IJobInfoDao iJobInfoDao;

    public int addJobInfo(JobInfo jobInfo) {
        return iJobInfoDao.addJobInfo(jobInfo);
    }

//    public JobInfo IfTypeIsNull(JobInfo jobInfo) {
//        return iJobInfoDao.IfTypeIsNull(jobInfo);
//    }

    //搜索栏查询所有的有关类型的工作
    public List<JobInfo> showAllJob(JobInfo jobInfo) {
        return iJobInfoDao.showAllJob(jobInfo);
    }

    public List<JobInfo> selectAll(JobInfo jobInfo) {
        return iJobInfoDao.selectAll(jobInfo);
    }
}
