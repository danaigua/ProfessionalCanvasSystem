package com.job.service.impl;

import com.job.dao.IUserAspriationDao;
import com.job.pojo.UserAspriation;
import com.job.service.IUserAspriationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("userAspriationService")
public class UserAspriationServiceImpl implements IUserAspriationService {
    @Resource
    private IUserAspriationDao userAspriationDao;
    public int userUpdateAspriation(UserAspriation userAspriation) {
        return userAspriationDao.userUpdateAspriation(userAspriation);
    }

    public int userAddAspriation(UserAspriation userAspriation) {
        return userAspriationDao.userAddAspriation(userAspriation);
    }

    public UserAspriation showUserAspriation(UserAspriation userAspriation) {
        return userAspriationDao.showUserAspriation(userAspriation);
    }
}
