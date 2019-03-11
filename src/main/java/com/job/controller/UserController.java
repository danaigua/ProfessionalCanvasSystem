package com.job.controller;

import com.job.pojo.User;
import com.job.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

public class UserController extends ActionSupport {
    private User user;
    private String error;
    private String Info;

    public String getInfo() {
        return Info;
    }

    public void setInfo(String info) {
        Info = info;
    }

    @Resource
    private UserServiceImpl userService;
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    //修改数据
    public String ChangeInfo(){
        int i = userService.UpdateInfo(user);
        if (i>0){
            Info = "成功修改";
            System.out.println(Info);
            return "success";
        }else{
            Info = "修改失败";
            System.out.println(Info);
            return "error";
        }
    }
    public String login(){
        User user1 = userService.login(user);
        if (user1==null){
            this.error = "用户名密码错误";
            return "error";
        }else{

            ActionContext actionContext = ActionContext.getContext();
            Map<String, Object> session = actionContext.getSession();
            session.put("currentUser",user1);
            return "success";
        }
    }
    public String Register(){
        int register = userService.Register(user);
        if (register!=0) {
            return "success";
        }else{
            return "error";
        }
    }
    public String ForgetPassword(){
        int i = userService.ForgetPassword(user);
        //String ConfirmPassword =  httpServletRequest.getParameter("ConfirmPassword");
        if (i!=0) {
            return "success";
        }else{
            return "error";
        }
    }
    public String LoginHomeIndex(){
        if (user!=null){
            return "successLogin";
        }else {
            return "errorLogin";
        }

    }
}
