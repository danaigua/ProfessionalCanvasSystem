package com.job.controller;

import com.job.pojo.JobInfo;
import com.job.service.impl.JobInfoServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ServletResponseAware;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class AddJobInfoController extends ActionSupport implements ServletResponseAware {
    private String errorInfo;

    private JobInfo jobInfo;

    private HttpServletResponse response;


    public String getErrorInfo() {
        return errorInfo;
    }

    public void setErrorInfo(String errorInfo) {
        this.errorInfo = errorInfo;
    }

    public JobInfo getJobInfo() {
        return jobInfo;
    }

    public void setJobInfo(JobInfo jobInfo) {
        this.jobInfo = jobInfo;
    }

    @Resource
    private JobInfoServiceImpl JobService;
    //定位定到超级管理员页面
    public String AddJob() throws  IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");//防止弹出的信息出现乱码
        PrintWriter out = response.getWriter();
        int i = JobService.addJobInfo(jobInfo);
        if (i != 0 ){
            out.print("<script>alert('添加成功！')</script>");
            out.print("<script>window.location.href='http://localhost:8080/ProfessionalCanvasSystem_war/Manger/Super_Admin/superMember.jsp'</script>");
            out.flush();
            out.close();
//            return SUCCESS;
            return null;
        }else{
            out.print("<script>alert('修改失败！')</script>");
            out.print("<script>window.location.href='http://localhost:8080/ProfessionalCanvasSystem_war/Manger/Super_Admin/superMember.jsp'</script>");
            out.flush();
            out.close();
//            return ERROR;
            return null;
        }

    }
    //定位到普通管理员页面
    public String AddJobOri() throws  IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");//防止弹出的信息出现乱码
        PrintWriter out = response.getWriter();
        int i = JobService.addJobInfo(jobInfo);
        if (i != 0 ){
            out.print("<script>alert('添加成功！')</script>");
            out.print("<script>window.location.href='http://localhost:8080/ProfessionalCanvasSystem_war/Manger/General_Manger/ordinaryMember.jsp'</script>");
            out.flush();
            out.close();
//            return SUCCESS;
            return null;
        }else{
            out.print("<script>alert('修改失败！')</script>");
            out.print("<script>window.location.href='http://localhost:8080/ProfessionalCanvasSystem_war/Manger/General_Manger/ordinaryMember.jsp'</script>");
            out.flush();
            out.close();
//            return ERROR;
            return null;
        }
    }


    public void setServletResponse(HttpServletResponse response) {
        this.response = response;
    }
}
