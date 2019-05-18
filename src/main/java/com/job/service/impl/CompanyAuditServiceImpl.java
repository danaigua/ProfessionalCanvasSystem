package com.job.service.impl;

import com.job.dao.IComapnyAuditDao;
import com.job.pojo.Companyaudit;
import com.job.service.ICompanyAuditService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("companyAuditService")
public class CompanyAuditServiceImpl implements ICompanyAuditService {
    @Resource
    private IComapnyAuditDao iComapnyAuditDao;
    public List<Companyaudit> companyauditList(Companyaudit companyaudit) {
        return iComapnyAuditDao.companyauditList(companyaudit);
    }

    public int companyauditAdd(Companyaudit companyaudit) {
        return iComapnyAuditDao.companyauditAdd(companyaudit);
    }
}
