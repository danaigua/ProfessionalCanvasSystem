package com.job.service;

import com.job.pojo.Admin;

import java.util.List;

public interface IAdminService {
    Admin loginBackstage(Admin admin);
    int ResAdmin(Admin admin);
    /**
     * 列出所有的管理员信息，并且分页
     * @param page  页数
     * @param limit  查出来的数量
     * @return
     */
    List<Admin> listAllAdmin(int page, int limit);
    /**
     * 通过amdinId来删除admin
     * @param amdinId
     * @return
     */
    int deleteAdmin(String amdinId);
    /**
     * 通过动态sql来修改管理员信息
     * @param admin
     * @return
     */
    int updateAdminInfo(Admin admin);
}
