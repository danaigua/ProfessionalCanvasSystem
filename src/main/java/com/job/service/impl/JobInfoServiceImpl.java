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


    //搜索栏查询所有的有关类型的工作
    public List<JobInfo> showAllJob(JobInfo jobInfo) {
        return iJobInfoDao.showAllJob(jobInfo);
    }




    //返回所有
    public List<JobInfo> selectAll() {
        return iJobInfoDao.selectAll();
    }

    public List<JobInfo> selectByteAddr(JobInfo jobInfo) {
        return iJobInfoDao.selectByteAddr(jobInfo);
    }

    public JobInfo selectByteId(JobInfo jobInfo) {
        return iJobInfoDao.slectByteId(jobInfo);
    }

    public List<JobInfo> selectTypeButeSchool() {
        return iJobInfoDao.selectTypeButeSchool();
    }

}
