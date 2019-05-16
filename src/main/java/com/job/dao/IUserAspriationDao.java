package com.job.dao;

import com.job.pojo.UserAspriation;

public interface IUserAspriationDao {
    //修改用户期望
    public int userUpdateAspriation(UserAspriation userAspriation);
    //添加用户期望
    public int userAddAspriation(UserAspriation userAspriation);
    //展示个人意愿
    public UserAspriation showUserAspriation(UserAspriation userAspriation);
}
