package com.job.controller;

import com.job.pojo.User;
import com.job.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;


@Controller
public class LoginController extends ActionSupport {
    private  User user;
    @Resource
    private UserServiceImpl userService;

    @Override
    public String execute() throws Exception {
        User user1 = userService.login(user);
        if (user1==null){
            return "error";
        }else{
            return "success";
        }
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
