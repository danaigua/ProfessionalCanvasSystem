package com.job.service;

import com.job.pojo.Companyaudit;

import java.util.List;

public interface ICompanyAuditService {
    List<Companyaudit> companyauditList();
    int companyauditAdd(Companyaudit companyaudit);
    Companyaudit selectByteCompanyAuditId(Companyaudit companyaudit);
}
