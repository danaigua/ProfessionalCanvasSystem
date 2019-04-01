package com.job.controller;

import com.job.pojo.AnalyzeSalary;
import com.opensymphony.xwork2.ActionSupport;

public class AnalyzeServiceController extends ActionSupport {
    private AnalyzeSalary analyzeSalary;

    public AnalyzeSalary getAnalyzeSalary() {
        return analyzeSalary;
    }

    public void setAnalyzeSalary(AnalyzeSalary analyzeSalary) {
        this.analyzeSalary = analyzeSalary;
    }

    public String AnaSalary(){
        return SUCCESS;
    }
}
