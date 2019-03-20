package com.job.service.impl;

import com.job.dao.IAdminDao;
import com.job.pojo.Admin;
import com.job.service.IAdminService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("adminService")
public class AdminServiceImpl implements IAdminService {
    @Resource
    private IAdminDao adminDao;
    public Admin loginBackstage(Admin admin) {
        return adminDao.loginBackstage(admin);
    }
    public int ResAdmin(Admin admin) {
        return adminDao.ResAdmin(admin);
    }
}
