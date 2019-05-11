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

    /**
     * layui分页查找出job的信息
     * @param page
     * @param limit
     * @return
     */
    public List<JobInfo> jobList(int page, int limit) {
        page = (page - 1)*limit;
        return iJobInfoDao.jobList(page, limit);
    }

    /**
     * 删除一个job
     * @param id
     * @return
     */
    public int jobDelete(int id) {
        return iJobInfoDao.jobDelete(id);
    }

    public int jobUpdate(JobInfo jobInfo) {
        return iJobInfoDao.jobUpdate(jobInfo);
    }

}
