package com.job.service;

import com.job.pojo.User;
import org.springframework.stereotype.Service;



@Service
public interface IUserService {
   User login(User user);
   int Register(User user);
   int ForgetPassword(User user);
   boolean LoginHomeIndex(User user);
   //查询一个的所有信息
//   int SelectOne(User user);


   //更新数据
   int UpdateInfo(User user);
}
