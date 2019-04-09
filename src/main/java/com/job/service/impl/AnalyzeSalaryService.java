package com.job.service.impl;

import com.job.dao.IAnalyzeJobSalaryDao;
import com.job.pojo.SalaryResult;
import com.job.service.IAnalyzeSalaryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
@Service("analyzeSalaryService")
public class AnalyzeSalaryService implements IAnalyzeSalaryService {
    @Resource
    private IAnalyzeJobSalaryDao analyzeJobDao;
    public SalaryResult selectSalaryByteAddrandJob(SalaryResult salaryResult) {
        return analyzeJobDao.selectSalaryByteAddrandJob(salaryResult);
    }
}
