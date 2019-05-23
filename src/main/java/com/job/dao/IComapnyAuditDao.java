package com.job.dao;

import com.job.pojo.Companyaudit;

import java.util.List;

public interface IComapnyAuditDao {
    List<Companyaudit> companyauditList();
    int companyauditAdd(Companyaudit companyaudit);
    Companyaudit selectByteCompanyAuditId(Companyaudit companyaudit);
}
