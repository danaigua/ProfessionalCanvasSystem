package com.job.service;

import com.job.pojo.JobInfo;

import java.util.List;
import java.util.Map;

public interface IJobInfoService {
    int addJobInfo(JobInfo jobInfo);

    /**
     *
     * @param jobInfo
     * @return
     * 对数据库的工作类型进行判断就返回全部的数据
     * 如果没有工作类型或者工作类型找不到
     * 搜索栏查询所有的有关类型的工作
     * 返回所有
     */
//    JobInfo IfTypeIsNull(JobInfo jobInfo);

    List<JobInfo> showAllJob(JobInfo jobInfo);

    List<JobInfo> selectAll();
    List<JobInfo> selectByteAddr(JobInfo jobInfo);

    /**
     * 返回全部的工作资料到后台
     */
    JobInfo selectByteId(JobInfo jobInfo);

    List<JobInfo> selectTypeButeSchool();

    /**
     * layui通过分页查找出内容
     * @param page
     * @param limit
     * @return
     */
    List<JobInfo> jobList(int page,int limit);
    int jobDelete(int id);
    int jobUpdate(JobInfo jobInfo);

    /**
     * 通过管理员id查找简历信息实体
     * @param page
     * @param limit
     * @return
     */
    List<JobInfo> findByAdminId(Map<String, Object> map);
}
