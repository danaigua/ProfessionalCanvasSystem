package com.job.controller;

import com.job.pojo.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import java.util.Map;

public class JurisdictionController extends ActionSupport {

    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
    public String AnalyzeJurisdictionManger(){
        Map<String, Object> session = ActionContext.getContext().getSession();
        Object currentUser = session.get("currentUser");
        if ((currentUser==null)) {
            return "NOJURISDICTION";
        }else{
            return "PASS";
        }
    }
}
