package com.job.service.impl;


import com.job.dao.IUserDao;
import com.job.pojo.User;
import com.job.service.IUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service("userService")
public abstract class UserServiceImpl implements IUserService {
    @Resource
    private IUserDao userDao;

    public User login(User user) {
        return userDao.login(user);
    }

    public int Register(User user) {
        return userDao.Register(user);
    }

    public int ForgetPassword(User user) {
        return userDao.ForgetPassword(user);
    }

    public boolean LoginHomeIndex(User user) {
        return false;
    }


    //修改数据
    public int UpdateInfo(User user) {
        return userDao.UpdateInfo(user);
    }

    public int DeleteUser(User user) {
        return userDao.DeleteUser(user);
    }

    public List<User> selectAll() {
        return userDao.selectAll();
    }

    public List<User> selectUserBytePage(int page,int limit) {
        page = (page - 1)*limit;
        return userDao.selectUserBytePage(page,limit);
    }

    public int findUserCount() {
        return userDao.findUserCount();
    }

//    public int SelectOne(User user) {
//        return userDao.SelectOne(user);
//    }


}
