package com.job.service;

import com.job.pojo.Admin;

public interface IAdminService {
    Admin loginBackstage(Admin admin);
    int ResAdmin(Admin admin);
}
