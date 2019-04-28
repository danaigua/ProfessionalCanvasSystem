package com.job.controller;

import com.job.pojo.User;
import com.job.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserManagerController extends ActionSupport {
    @Resource
    private UserServiceImpl userService2;
    private int page = 1;
    private int limit = 1;
    private Map<String, Object> result = null;

    public Map<String, Object> getResult() {
        return result;
    }

    public void setResult(Map<String, Object> result) {
        this.result = result;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }




    public String list(){
        List<User> users = userService2.selectUserBytePage(page, limit);
        result = new HashMap<String,Object>();
        result.put("code",0);
        result.put("msg","");
        result.put("count",userService2.findUserCount());
        JSONArray array = JSONArray.fromObject(users);
        result.put("data",array);
        ActionContext.getContext().getValueStack().set("jsonData", JSONObject.fromObject(result));
        return SUCCESS;
    }
}
