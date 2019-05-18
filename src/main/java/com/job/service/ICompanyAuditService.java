package com.job.service;

import com.job.pojo.Companyaudit;

import java.util.List;

public interface ICompanyAuditService {
    List<Companyaudit> companyauditList(Companyaudit companyaudit);
    int companyauditAdd(Companyaudit companyaudit);
}
