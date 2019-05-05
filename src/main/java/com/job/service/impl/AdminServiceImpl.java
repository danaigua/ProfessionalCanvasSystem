package com.job.service.impl;

import com.job.dao.IAdminDao;
import com.job.pojo.Admin;
import com.job.service.IAdminService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

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
    /**
     * 列出所有的管理员信息，并且分页
     * @param page  页数
     * @param limit  查出来的数量
     * @return
     */
    public List<Admin> listAllAdmin(int page, int limit) {
        page = (page - 1)*limit;
        return adminDao.listAllAdmin(page,limit);
    }

    /**
     * 通过amdinId来删除admin
     * @param amdinId
     * @return
     */
    public int deleteAdmin(String amdinId){
        return adminDao.deleteAdmin(amdinId);
    }
    /**
     * 通过动态sql来修改管理员信息
     * @param admin
     * @return
     */
    public int updateAdminInfo(Admin admin) {
        return adminDao.updateAdminInfo(admin);
    }

}
