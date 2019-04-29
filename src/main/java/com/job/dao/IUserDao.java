package com.job.dao;


import com.job.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

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


    //分页查询
    public List<User> selectUserBytePage(@Param(value = "page")int page,@Param(value = "limit")int limit);
    //查询出总数
    public int findUserCount();

//    通过id来删除用户
    public int deleteUserByteId(@Param(value = "id") int id);
    //通过动态sql来修改用户信息
    public int updateUserInfo(User user);
}
