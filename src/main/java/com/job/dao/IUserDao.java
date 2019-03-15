package com.job.dao;


import com.job.pojo.User;

import java.util.List;


public interface IUserDao {

    public User login(User user);
    public int Register(User user);
    public int ForgetPassword(User user);
    public boolean LoginHomeIndex(User user);
    //查询一个
//    public int SelectOne(User user);

    public int UpdateInfo(User user);

    //删除用户
    public int DeleteUser(User user);

    //列出所有的用户来增删改查
    public List<User> selectAll();


}
