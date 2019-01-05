package com.job.controller;

import com.job.pojo.User;
import com.job.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

@Controller
public class ForgetPasswordController extends ActionSupport {
    private User user;
    private String error;
    @Resource
    private UserServiceImpl userService;
    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    //private HttpServletRequest httpServletRequest;
    @Override
    public String execute() throws Exception {
        int i = userService.ForgetPassword(user);
        //String ConfirmPassword =  httpServletRequest.getParameter("ConfirmPassword");
        if (i!=0) {
            return SUCCESS;
        }else{
            return ERROR;
        }
    }
}
