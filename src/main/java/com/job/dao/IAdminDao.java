package com.job.dao;


import com.job.pojo.Admin;

public interface IAdminDao {
    public Admin loginBackstage(Admin admin);
    public int ResAdmin(Admin admin);

}
