package com.job.controller;

import com.job.pojo.JobInfo;
import com.job.service.impl.JobInfoServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class SearchJobBytetypeController extends ActionSupport {
    private String typeJob;
    private JobInfo job;
    private List<JobInfo> jobInfos;

    public JobInfo getJob() {
        return job;
    }

    public void setJob(JobInfo job) {
        this.job = job;
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
    public String  gotoS(){
        return SUCCESS;
    }
    /**
     * 通过类型来查找
     * @return
     */

    public String searchJobByteType(){
//        HttpServletRequest request = ServletActionContext.getRequest();
//        String type = request.getParameter("TypeJob");
//        String type = ServletActionContext.getRequest().getParameter("typeJob");
        System.out.println(typeJob);
//        System.out.println(typeJob);
        if ("C".equals(typeJob)||"c".equals(typeJob)){
            System.out.println(1);
            job.setType("c");
            System.out.println(job.getType());
            jobInfos = JobService.showAllJob(job);
        }else  if ("java".equals(typeJob)){
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
    public String searchJobByteAddr(){
        jobInfos = JobService.selectByteAddr(job);
        return SUCCESS;
    }
//    通过类型来查找
    public String searchJobBytetype(){
        jobInfos = JobService.showAllJob(job);
        return SUCCESS;
    }
    //通过id来查找
    public String searchJobByteId(){
        JobInfo jobInfo = JobService.selectByteId(job);
        return SUCCESS;
    }
}
