package com.job.pojo;

public class AnalyzeResult {
    private String addrAveSalary;//地区平均工资
    private int budgetSalary1;//预计工资
    private int budgetSalary2;//预计工资
    private String industrySalary;//行业工资
    private String talentGap;//人才缺口
    private String errorInfo;

    public String getAddrAveSalary() {
        return addrAveSalary;
    }

    public void setAddrAveSalary(String addrAveSalary) {
        this.addrAveSalary = addrAveSalary;
    }

    public int getBudgetSalary1() {
        return budgetSalary1;
    }

    public void setBudgetSalary1(int budgetSalary1) {
        this.budgetSalary1 = budgetSalary1;
    }

    public int getBudgetSalary2() {
        return budgetSalary2;
    }

    public void setBudgetSalary2(int budgetSalary2) {
        this.budgetSalary2 = budgetSalary2;
    }

    public String getIndustrySalary() {
        return industrySalary;
    }

    public void setIndustrySalary(String industrySalary) {
        this.industrySalary = industrySalary;
    }

    public String getTalentGap() {
        return talentGap;
    }

    public void setTalentGap(String talentGap) {
        this.talentGap = talentGap;
    }

    public String getErrorInfo() {
        return errorInfo;
    }

    public void setErrorInfo(String errorInfo) {
        this.errorInfo = errorInfo;
    }
}
