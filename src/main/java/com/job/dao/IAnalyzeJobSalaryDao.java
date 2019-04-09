package com.job.dao;

import com.job.pojo.SalaryResult;

public interface IAnalyzeJobSalaryDao {
    public SalaryResult selectSalaryByteAddrandJob(SalaryResult salaryResult);
}
