package com.job.service;

import com.job.pojo.UserAspriation;

public interface IUserAspriationService {
    //修改用户期望
    int userUpdateAspriation(UserAspriation userAspriation);
    //添加用户期望
    int userAddAspriation(UserAspriation userAspriation);
    //在个人中心那里展示用户期望通过id来查找
    UserAspriation showUserAspriation(UserAspriation userAspriation);
}
