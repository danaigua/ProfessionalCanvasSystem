package com.job.dao;


import com.job.pojo.User;


public interface IUserDao {

    public User login(User user);
    public int Register(User user);
    public int ForgetPassword(User user);
    public boolean LoginHomeIndex(User user);
    //查询一个
//    public int SelectOne(User user);

    public int UpdateInfo(User user);
}
