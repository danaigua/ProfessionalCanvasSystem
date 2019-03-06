package com.job.controller;

import com.job.pojo.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


import java.util.Map;

/*
    在页面的“我的”增加action的判断操作。使页面可以判断是否登陆
 */
public class AboutLoginController extends ActionSupport {
    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String about(){
        //struts2获取页面session的方式
        Map<String,Object> map = ActionContext.getContext().getSession();
        Object currentUser = map.get("currentUser");
        if (currentUser==null){
            return "NULLLOGIN";
        }else {
            return "ALREADYLOGIN";
        }

    }


}
