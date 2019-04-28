package com.job.service;

import com.job.pojo.User;
import org.springframework.stereotype.Service;

import java.util.List;

public interface IUserService {
   User login(User user);
   int Register(User user);
   int ForgetPassword(User user);
   boolean LoginHomeIndex(User user);
   //查询一个的所有信息
//   int SelectOne(User user);


   //更新数据
   int UpdateInfo(User user);

   //删除用户
   int DeleteUser(User user);

   //查询所有用户
   List<User> selectAll();

   //分页查询
   List<User> selectUserBytePage(int page,int limit);

   //查询总数
   int findUserCount();
   //删除用户
   int deleteUserByteId(int id);
}
