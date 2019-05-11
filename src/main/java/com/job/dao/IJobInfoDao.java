package com.job.dao;

import com.job.pojo.JobInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IJobInfoDao {
    public int addJobInfo(JobInfo jobInfo);
    //返回查询到的类型对象给前端
    public  List<JobInfo> showAllJob(JobInfo jobInfo);
    //如果查不出来的话就返回全部
    public List<JobInfo> selectAll();
    //通过地区查找工作
    public List<JobInfo> selectByteAddr(JobInfo jobInfo);
    //通过id查找工作，动态添加到网页上面
    public JobInfo slectByteId(JobInfo jobInfo);
    //返回校招工作
    public List<JobInfo> selectTypeButeSchool();
    //layui后台通过分页查找职位信息
    public List<JobInfo> jobList(@Param(value = "page")int page,@Param(value = "limit")int limit);
    //删除一个工作
    public int jobDelete(@Param(value = "id")int id);
    //对工作信息的编辑和修改
    public int jobUpdate(JobInfo jobInfo);
}
