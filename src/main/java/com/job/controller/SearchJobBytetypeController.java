package com.job.controller;

import com.job.pojo.JobInfo;
import com.job.pojo.Monitor;
import com.job.service.impl.JobInfoServiceImpl;
import com.job.service.impl.MonitorServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class SearchJobBytetypeController extends ActionSupport {
    private String typeJob;
    private String addr;
    private int id;

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    JobInfo job = new JobInfo();
//    private JobInfo job;
    private JobInfo jobInfo;
    private JobInfo job1;
    private JobInfo job2;
    private JobInfo job3;
    private List<JobInfo> jobInfos;
    private List<JobInfo> jobInfos1;
    private List<JobInfo> jobInfos2;
    private List<JobInfo> jobInfos3;
    private Monitor monitor;

    public JobInfo getJobInfo() {
        return jobInfo;
    }

    public void setJobInfo(JobInfo jobInfo) {
        this.jobInfo = jobInfo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public JobInfo getJob2() {
        return job2;
    }

    public void setJob2(JobInfo job2) {
        this.job2 = job2;
    }

    public JobInfo getJob1() {
        return job1;
    }

    public void setJob1(JobInfo job1) {
        this.job1 = job1;
    }

    public JobInfo getJob3() {
        return job3;
    }

    public void setJob3(JobInfo job3) {
        this.job3 = job3;
    }

    public List<JobInfo> getJobInfos1() {
        return jobInfos1;
    }

    public void setJobInfos1(List<JobInfo> jobInfos1) {
        this.jobInfos1 = jobInfos1;
    }

    public List<JobInfo> getJobInfos2() {
        return jobInfos2;
    }

    public void setJobInfos2(List<JobInfo> jobInfos2) {
        this.jobInfos2 = jobInfos2;
    }

    public List<JobInfo> getJobInfos3() {
        return jobInfos3;
    }

    public void setJobInfos3(List<JobInfo> jobInfos3) {
        this.jobInfos3 = jobInfos3;
    }


    public List<JobInfo> getJobInfos() {
        return jobInfos;
    }

    public void setJobInfos(List<JobInfo> jobInfos) {
        this.jobInfos = jobInfos;
    }

    public String getTypeJob() {
        return typeJob;
    }

    public void setTypeJob(String typeJob) {
        this.typeJob = typeJob;
    }

    @Resource
    private JobInfoServiceImpl JobService;

    @Resource
    private MonitorServiceImpl monitorService;

    public String  gotoS(){
        return SUCCESS;
    }
    /**
     * 通过类型来查找
     * @return
     */

    public String searchJobByteType(){

        monitor = new Monitor();
        monitor.setSearchKeyWord(typeJob);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("searchKeyWord",typeJob);
        List<Monitor> monitors = monitorService.findMonitor(map);
        System.out.println(monitors);
        if (monitors.size() != 0){
            monitors.get(0).setSearchKeyWord(null);
            monitors.get(0).setSearchAddr(null);
            monitors.get(0).setSearchAddrNo(null);
            monitors.get(0).setSearchKeyWordNO(monitors.get(0).getSearchKeyWordNO() + 1);
            monitorService.update(monitors.get(0));
        }else {
            monitor.setSearchKeyWordNO(1);
            monitorService.addMonitor(monitor);
        }


        if ("C".equals(typeJob)||"c".equals(typeJob)){
            System.out.println(1);
            job.setType("c");
            System.out.println(job.getType());
            jobInfos = JobService.showAllJob(job);
        }else  if ("java".equals(typeJob)||"JAVA".equals(typeJob)){
            job.setType("java");
            System.out.println(job.getType());
            jobInfos = JobService.showAllJob(job);
        } else if ("".equals(typeJob)){
            jobInfos = JobService.selectAll();
        } else if ("php".equals(typeJob)||"Php".equals(typeJob)||"PHP".equals(typeJob)){
            job.setType("php");
            jobInfos = JobService.showAllJob(job);
        } else if ("javascript".equals(typeJob)||"JAVASCRIPT".equals(typeJob)){
            job.setType("javascript");
            jobInfos = JobService.showAllJob(job);
        } else if ("python".equals(typeJob)||"PYTHON".equals(typeJob)||"Python".equals(typeJob)){
            job.setType("python");
            jobInfos = JobService.showAllJob(job);
        } else if ("大数据".equals(typeJob)||"人工智能".equals(typeJob)||"区块链".equals(typeJob)||"运维".equals(typeJob)||"VB".equals(typeJob)){
            job.setType(typeJob);
            jobInfos = JobService.showAllJob(job);
        }else{
            jobInfos = JobService.selectAll();
        }
        System.out.println(job.getType());
        System.out.println(jobInfos);
        System.out.println(jobInfos.size());


        return SUCCESS;
    }
//    //通过地区来查找
    public String searchJobByteAddr(){
        job.setAddress(addr);
        jobInfos1 = JobService.selectByteAddr(job);
        return SUCCESS;
    }
////    通过类型来查找
    public String searchJobBytetype(){
        JobInfo job1 = new JobInfo();
        job1.setType(typeJob);
        System.out.println(job1);
        jobInfos2 = JobService.showAllJob(job1);
        return SUCCESS;
    }
    //通过id来查找
    public String searchJobByteId(){
        job.setId(id);
        System.out.println(id);
        jobInfo = JobService.selectByteId(job);
        System.out.println(jobInfo);
        ActionContext actionContext = ActionContext.getContext();
        Map<String, Object> session = actionContext.getSession();
        session.put("jobInfo", jobInfo);
        return SUCCESS;
    }
}
