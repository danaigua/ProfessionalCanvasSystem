package com.job.controller;

import com.job.pojo.JobInfo;
import com.job.service.impl.JobInfoServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class layuiJobController extends ActionSupport {
    private JobInfo jobInfo;
    private Map<String, Object> result = null;
    private int page = 1;
    private int limit = 1;
    private int updateid;
    private String updatefield;
    private String updatevalue;
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUpdateid() {
        return updateid;
    }

    public void setUpdateid(int updateid) {
        this.updateid = updateid;
    }

    public String getUpdatefield() {
        return updatefield;
    }

    public void setUpdatefield(String updatefield) {
        this.updatefield = updatefield;
    }

    public String getUpdatevalue() {
        return updatevalue;
    }

    public void setUpdatevalue(String updatevalue) {
        this.updatevalue = updatevalue;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }

    public Map<String, Object> getResult() {
        return result;
    }

    public void setResult(Map<String, Object> result) {
        this.result = result;
    }

    public JobInfo getJobInfo() {
        return jobInfo;
    }

    public void setJobInfo(JobInfo jobInfo) {
        this.jobInfo = jobInfo;
    }

    @Resource
    private JobInfoServiceImpl JobService;
    //添加职位信息
    public String jobAdd(){
        int i = JobService.addJobInfo(jobInfo);
        return SUCCESS;
    }
    //列出职位表
    public String list(){
        List<JobInfo> jobInfos = JobService.jobList(page,limit);
        List<JobInfo> jobInfos1 = JobService.selectAll();
        result = new HashMap<String, Object>();
        result.put("code",0);
        result.put("msg","");
        result.put("count",jobInfos1.size());
        JSONArray array = JSONArray.fromObject(jobInfos);
        result.put("data",array);
        ActionContext.getContext().getValueStack().set("jsonData", JSONObject.fromObject(result));
        return SUCCESS;
    }

    /**
     * 修改工作表格
     * @return
     */
    public String update(){
        result = new HashMap<String, Object>();
        JobInfo jobInfo = new JobInfo();
        jobInfo.setId(updateid);
        if("Company".equals(updatefield) || "company".equals(updatefield)){

            jobInfo.setCompany(updatevalue);
        }else if("Department".equals(updatefield) || "department".equals(updatefield)){

            jobInfo.setDepartment(updatevalue);
        }else if("Salary".equals(updatefield) || "salary".equals(updatefield)){

            jobInfo.setSalary(updatevalue);
        }else if("Job".equals(updatefield) || "job".equals(updatefield)){

            jobInfo.setJob(updatevalue);
        }else if("Welfare".equals(updatefield) || "Welfare".equals(updatefield)){

            jobInfo.setWelfare(updatevalue);
        }else if("Academic".equals(updatefield) || "academic".equals(updatefield)){

            jobInfo.setAcademic(updatevalue);
        }else if("Descrive".equals(updatefield) || "descrive".equals(updatefield)){

            jobInfo.setDescrive(updatevalue);
        }else if("Address".equals(updatefield) || "address".equals(updatefield)){

            jobInfo.setAddress(updatevalue);
        }else if("type".equals(updatefield)){

            jobInfo.setType(updatevalue);
        }else if("experience".equals(updatefield)){
            jobInfo.setExperience(updatevalue);
        }else if("workTime".equals(updatefield)){

            jobInfo.setWorkTime(updatevalue);
        }else if("jobRequirements1".equals(updatefield)){

            jobInfo.setJobRequirements1(updatevalue);
        }else if("jobRequirements2".equals(updatefield)){

            jobInfo.setJobRequirements2(updatevalue);
        }else if("jobRequirements3".equals(updatefield)){

            jobInfo.setJobRequirements3(updatevalue);
        }else if("jobRequirements4".equals(updatefield)){

            jobInfo.setJobRequirements4(updatevalue);
        }else if("jobRequirements5".equals(updatefield)){

            jobInfo.setJobRequirements5(updatevalue);
        }else if("channelPromotion1".equals(updatefield)){

            jobInfo.setChannelPromotion1(updatevalue);
        }else if("channelPromotion2".equals(updatefield)){

            jobInfo.setChannelPromotion2(updatevalue);
        }else if("jobType".equals(updatefield)){
            jobInfo.setJobType(updatevalue);
        }
        result.put("msg","");
        int i = JobService.jobUpdate(jobInfo);
        if (i > 0){
            result.put("code", 1);
        }else{
            result.put("code", -1);
        }
        ActionContext.getContext().getValueStack().set("jsonData", JSONObject.fromObject(result));
        return SUCCESS;
    }
    /**
     * 删除工作表格
     * return
     */
    public String delete(){
        int i = JobService.jobDelete(id);
        result = new HashMap<String, Object>();
        if (i > 0){
            result.put("code",1);
        }else{
            result.put("code", -1);
        }
        ActionContext.getContext().getValueStack().set("jsonData", JSONObject.fromObject(result));
        return SUCCESS;
    }
}
