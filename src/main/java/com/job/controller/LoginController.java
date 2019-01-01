package com.job.controller;

import com.job.pojo.User;
import com.job.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.util.Map;


@Controller
public class LoginController extends ActionSupport {
    private  String error;
    private  User user;
    @Resource
    private UserServiceImpl userService;

    @Override
    public String execute() throws Exception {
        User user1 = userService.login(user);
        if (user1==null){
            this.error = "用户名密码错误";
            return ERROR;
        }else{
            ActionContext actionContext = ActionContext.getContext();
            Map<String, Object> session = actionContext.getSession();
            session.put("currentUser",user);

            return SUCCESS;
        }
    }

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
}
