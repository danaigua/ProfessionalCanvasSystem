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
    public List<Companyaudit> companyauditList() {
        return iComapnyAuditDao.companyauditList();
    }

    public int companyauditAdd(Companyaudit companyaudit) {
        return iComapnyAuditDao.companyauditAdd(companyaudit);
    }

    public Companyaudit selectByteCompanyAuditId(Companyaudit companyaudit) {
        return iComapnyAuditDao.selectByteCompanyAuditId(companyaudit);
    }
}
