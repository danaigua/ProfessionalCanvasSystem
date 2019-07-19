package com.job.controller;

import com.job.pojo.*;
import com.job.service.impl.AnalyzeJobService;
import com.job.service.impl.AnalyzeSalaryService;
import com.job.service.impl.MonitorServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class SalaryController extends ActionSupport {
    private AnalyzeSalary analyzeSalary;
    private String errorInfo;


    public String getErrorInfo() {
        return errorInfo;
    }

    public void setErrorInfo(String errorInfo) {
        this.errorInfo = errorInfo;
    }

    public AnalyzeSalary getAnalyzeSalary() {
        return analyzeSalary;
    }
    public void setAnalyzeSalary(AnalyzeSalary analyzeSalary) {
        this.analyzeSalary = analyzeSalary;
    }
    @Resource
    private AnalyzeJobService analyzeJobService;
    @Resource
    private AnalyzeSalaryService analyzeSalaryService;
    @Resource
    private MonitorServiceImpl monitorService;

    public String showSalaryByJobAndTime() {
        //根据工作经验来判断薪资
        AnalyzeJob analyzeJob = new AnalyzeJob();
        System.out.println(analyzeSalary.getJob());
        analyzeJob.setJob(analyzeSalary.getJob());
        System.out.println(analyzeSalary.getWorktime());
        analyzeJob.setJobWorktime(analyzeSalary.getWorktime());
        AnalyzeJob analyzeJob1 = analyzeJobService.showSalaryByJobAndTime(analyzeJob);

        if(analyzeSalary.getAddr() != null && analyzeSalary.getAddr() != ""){
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("searchAddr", analyzeSalary.getAddr());
            List<Monitor> monitors = monitorService.findMonitor(map);
            Monitor monitor1 = new Monitor();
            monitor1.setSearchAddr(analyzeSalary.getAddr());
            monitor1.setSearchKeyWord(null);
            monitor1.setSearchKeyWordNO(null);
            monitor1.setSearchAddrNo(1);
            if (monitors != null){
                monitors.get(0).setSearchAddrNo(monitors.get(0).getSearchAddrNo()+1);
                monitors.get(0).setSearchAddr(null);
                monitors.get(0).setSearchKeyWordNO(null);
                monitors.get(0).setSearchKeyWord(null);
                monitorService.update(monitors.get(0));
            }else{
                monitorService.addMonitor(monitor1);
            }
        }
        if (analyzeJob1 != null) {
            System.out.println(analyzeJob1);
            int salary1 = analyzeJob1.getSalary1();
            int salary2 = analyzeJob1.getSalary2();
            if (analyzeJob1 == null) {
                errorInfo = "在定向爬取的网站没有爬到相关信息，下次一定会尽力给您爬取到的";
                return SUCCESS;
            } else {
                errorInfo = "以下是本系统拼尽全力为您爬取分析到的，希望可以给小主一点帮助";
                int random = (int) (1 + Math.random() * (1000));
                salary1 = salary1 - random;
                salary2 = salary2 + random;
                if ("女".equals(analyzeSalary.getSex())) {
                    if ("未婚".equals(analyzeSalary.getMarry())) {
                        salary1 = salary1 + 300;
                        salary2 = salary2 + 300;
                    }

                }
                if ("偏内向".equals(analyzeSalary.getCharacter())) {
                    salary1 = salary1 - 100;
                }
                if ("开朗乐观".equals(analyzeSalary.getCharacter())) {
                    salary1 = salary1 + 100;
                }
                if ("开放".equals(analyzeSalary.getCharacter())) {
                    salary1 = salary1 + 300;
                }
                if ("本科".equals(analyzeSalary.getEducation())) {
                    salary1 = salary1 + 300;
                    salary2 = salary2 + 300;
                }
                if ("研究生".equals(analyzeSalary.getEducation())) {
                    salary1 = salary1 + 600;
                    salary2 = salary2 + 600;
                }
                if ("博士生".equals(analyzeSalary.getEducation())) {
                    salary1 = salary1 + 2000;
                    salary2 = salary2 + 2000;
                }
                if ("博士后".equals(analyzeSalary.getEducation())) {
                    salary1 = salary1 + 2200;
                    salary2 = salary2 + 2200;
                }
                if ("是".equals(analyzeSalary.getTechnology())) {
                    salary1 = salary1 + 362;
                    salary2 = salary2 + 312;
                }
                if ("是".equals(analyzeSalary.getTechnology())) {
                    salary1 = salary1 + 362;
                    salary2 = salary2 + 312;
                }
                if ("是".equals(analyzeSalary.getEverjob())) {
                    salary1 = salary1 + 632;
                    salary2 = salary2 + 462;
                }
                SalaryResult result = new SalaryResult();
                result.setAddr(analyzeSalary.getAddr());
                result.setJob(analyzeSalary.getJob());
                System.out.println(result.getAddr());
                System.out.println(result.getJob());
                //bug
                //analyzeSalaryService.selectSalaryByteAddrandJob(salaryResult);
                SalaryResult result1 = analyzeSalaryService.selectSalaryByteAddrandJob(result);
                if (result1 == null) {
                    AnalyzeResult analyzeResult = new AnalyzeResult();
                    analyzeResult.setErrorInfo("在定向爬取的网站没有爬到相关信息，下次一定会尽力给您爬取到的");
                    ActionContext actionContext = ActionContext.getContext();
                    Map<String, Object> session = actionContext.getSession();
                    session.put("analyzeResult", analyzeResult);
                } else {
                    AnalyzeResult analyzeResult = new AnalyzeResult();
                    analyzeResult.setBudgetSalary1(salary1);
                    analyzeResult.setBudgetSalary2(salary2);
                    analyzeResult.setErrorInfo(errorInfo);
                    analyzeResult.setAddrAveSalary(result1.getAddraveSalary());
                    analyzeResult.setIndustrySalary(result1.getJobaveSalary());
                    analyzeResult.setTalentGap(result1.getTalentGap());
                    ActionContext actionContext = ActionContext.getContext();
                    Map<String, Object> session = actionContext.getSession();
                    session.put("analyzeResult", analyzeResult);
                }
                return SUCCESS;

            }

        }else{
            AnalyzeResult analyzeResult = new AnalyzeResult();
            analyzeResult.setErrorInfo("在定向爬取的网站没有爬到相关信息，我们会努力完善的");
            ActionContext actionContext = ActionContext.getContext();
            Map<String, Object> session = actionContext.getSession();
            session.put("analyzeResult", analyzeResult);
            return SUCCESS;
        }
    }
}
