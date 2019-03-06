package com.job.service.impl;


import com.job.dao.IUserDao;
import com.job.pojo.User;
import com.job.service.IUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("userService")
public class UserServiceImpl implements IUserService {
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

}
