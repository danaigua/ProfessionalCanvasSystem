package com.job.controller;

import com.job.Utils.DateUtil;
import com.job.Utils.ImgUtil;
import com.job.pojo.Companyaudit;
import com.job.service.impl.CompanyAuditServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import javax.annotation.Resource;
import java.io.File;

public class CompanyAuditController extends ActionSupport {
    private Companyaudit companyaudit;
    private File companyImg1;
    private String companyImg1FileName;
    private File companyImg2;
    private String companyImg2FileName;
    private File companyImg3;
    private String companyImg3FileName;
    private File companyImg4;
    private String companyImg4FileName;
    private File companyImg5;
    private String companyImg5FileName;

    public File getCompanyImg1() {
        return companyImg1;
    }

    public void setCompanyImg1(File companyImg1) {
        this.companyImg1 = companyImg1;
    }

    public String getCompanyImg1FileName() {
        return companyImg1FileName;
    }

    public void setCompanyImg1FileName(String companyImg1FileName) {
        this.companyImg1FileName = companyImg1FileName;
    }

    public File getCompanyImg2() {
        return companyImg2;
    }

    public void setCompanyImg2(File companyImg2) {
        this.companyImg2 = companyImg2;
    }

    public String getCompanyImg2FileName() {
        return companyImg2FileName;
    }

    public void setCompanyImg2FileName(String companyImg2FileName) {
        this.companyImg2FileName = companyImg2FileName;
    }

    public File getCompanyImg3() {
        return companyImg3;
    }

    public void setCompanyImg3(File companyImg3) {
        this.companyImg3 = companyImg3;
    }

    public String getCompanyImg3FileName() {
        return companyImg3FileName;
    }

    public void setCompanyImg3FileName(String companyImg3FileName) {
        this.companyImg3FileName = companyImg3FileName;
    }

    public File getCompanyImg4() {
        return companyImg4;
    }

    public void setCompanyImg4(File companyImg4) {
        this.companyImg4 = companyImg4;
    }

    public String getCompanyImg4FileName() {
        return companyImg4FileName;
    }

    public void setCompanyImg4FileName(String companyImg4FileName) {
        this.companyImg4FileName = companyImg4FileName;
    }

    public File getCompanyImg5() {
        return companyImg5;
    }

    public void setCompanyImg5(File companyImg5) {
        this.companyImg5 = companyImg5;
    }

    public String getCompanyImg5FileName() {
        return companyImg5FileName;
    }

    public void setCompanyImg5FileName(String companyImg5FileName) {
        this.companyImg5FileName = companyImg5FileName;
    }

    @Resource
    private CompanyAuditServiceImpl companyAuditService;

    public Companyaudit getCompanyaudit() {
        return companyaudit;
    }

    public void setCompanyaudit(Companyaudit companyaudit) {
        this.companyaudit = companyaudit;
    }
    public String companyAudit() throws Exception {
        if(companyImg1 != null){
            String imgName = ImgUtil.getImgName(companyImg1, companyImg1FileName);
            companyaudit.setCompanyImg1(imgName);
        }else{
            companyaudit.setCompanyImg1("");
        }
        if(companyImg2 != null){
            String imgName = ImgUtil.getImgName(companyImg2, companyImg2FileName);
            companyaudit.setCompanyImg2(imgName);
        }else{
            companyaudit.setCompanyImg2("");
        }
        if(companyImg3 != null){
            String imgName = ImgUtil.getImgName(companyImg3, companyImg3FileName);
            companyaudit.setCompanyImg3(imgName);
        }else{
            companyaudit.setCompanyImg3("");
        }
        if(companyImg4 != null){
            String imgName = ImgUtil.getImgName(companyImg4, companyImg4FileName);
            companyaudit.setCompanyImg4(imgName);
        }else{
            companyaudit.setCompanyImg4("");
        }
        if(companyImg5 != null){
            String imgName = ImgUtil.getImgName(companyImg5, companyImg5FileName);
            companyaudit.setCompanyImg5(imgName);
        }else{
            companyaudit.setCompanyImg5("");
        }

        int i = companyAuditService.companyauditAdd(companyaudit);
        return SUCCESS;
    }
}
