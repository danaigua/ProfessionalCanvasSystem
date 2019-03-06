package com.job.service;

import com.job.pojo.User;
import org.springframework.stereotype.Service;

@Service
public interface IUserService {
   User login(User user);
   int Register(User user);
   int ForgetPassword(User user);
   boolean LoginHomeIndex(User user);
}
