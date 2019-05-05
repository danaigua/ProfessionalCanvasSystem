package com.job.dao;


import com.job.pojo.Admin;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IAdminDao {
    public Admin loginBackstage(Admin admin);
    public int ResAdmin(Admin admin);

    /**
     * 列出所有的管理员信息，并且分页
     * @param page  页数
     * @param limit  查出来的数量
     * @return
     */
    public List<Admin> listAllAdmin(@Param(value = "page")int page, @Param(value = "limit")int limit);

    /**
     * 通过adminId删除管理员
     * @param adminId
     * @return
     */
    public int deleteAdmin(@Param(value = "adminId")String adminId);

    /**
     * 通过动态sql来修改管理员信息
     * @param admin
     * @return
     */
    public int updateAdminInfo(Admin admin);
}
