package com.job.dao;

import com.job.pojo.Companyaudit;

import java.util.List;

public interface IComapnyAuditDao {
    List<Companyaudit> companyauditList(Companyaudit companyaudit);
    int companyauditAdd(Companyaudit companyaudit);
}
