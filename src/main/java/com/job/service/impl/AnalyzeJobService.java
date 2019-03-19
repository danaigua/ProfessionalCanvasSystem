package com.job.service.impl;

import com.job.dao.IAnalyzeJobDao;
import com.job.pojo.AnalyzeJob;
import com.job.service.IAnalyzeJobService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("analyzeJobService")

public class AnalyzeJobService implements IAnalyzeJobService {
    @Resource
    private IAnalyzeJobDao analyzeJobDao;
    public AnalyzeJob showSalaryByJobAndTime(AnalyzeJob analyzeJob) {
        return analyzeJobDao.showSalaryByJobAndTime(analyzeJob);
    }
}
