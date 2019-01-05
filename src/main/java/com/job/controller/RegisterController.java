package com.job.controller;


import com.job.pojo.User;
import com.job.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

@Controller
public class RegisterController extends ActionSupport {
    private User user;
    @Resource
    private UserServiceImpl userService;
    @Override
    public String execute() throws Exception {
        int register = userService.Register(user);
        if (register!=0) {
            return SUCCESS;
        }else{
            return ERROR;
        }
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
