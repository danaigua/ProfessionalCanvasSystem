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
    private int id;
    private User user;
    private int updateid;
    private String updatefield;
    private String updatevalue;
    private boolean flag;

    public boolean isFlag() {
        return flag;
    }

    public void setFlag(boolean flag) {
        this.flag = flag;
    }

    //    private String[] names = {"userPassword","userName","email","telephone"};
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getUpdateid() {
        return updateid;
    }

    public void setUpdateid(int updateid) {
        this.updateid = updateid;
    }

    public String getUpdatefield() {
        return updatefield;
    }

    public void setUpdatefield(String updatefield) {
        this.updatefield = updatefield;
    }

    public String getUpdatevalue() {
        return updatevalue;
    }

    public void setUpdatevalue(String updatevalue) {
        this.updatevalue = updatevalue;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

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


    /**
     * 返回用户列表
     * @return
     */
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

    /**
     * layui的删除操作
     * @return
     */
    public String deleteUserByteId(){
        int x = userService2.deleteUserByteId(id);
        if (x !=0 ){
            result = new HashMap<String,Object>();
            result.put("code",1);
            result.put("msg","");
            ActionContext.getContext().getValueStack().set("jsonData", JSONObject.fromObject(result));

        }else{

            result = new HashMap<String,Object>();
            result.put("code",-1);
            result.put("msg","");
            ActionContext.getContext().getValueStack().set("jsonData", JSONObject.fromObject(result));
        }
        return SUCCESS;
    }
    public String updateUserInfo(){
        user = new User();
        user.setUserId(updateid);
        result = new HashMap<String,Object>();
        result.put("msg","");
        if ("userPassword".equals(updatefield)){
            user.setUserPassword(updatevalue);
            int i = userService2.updateUserInfo(user);
            if (i>0){
                result.put("code",2);
            }else{
                result.put("code",-1);
            }
        }
        if ("userName".equals(updatefield)){
            user.setUserName(updatevalue);
            int i = userService2.updateUserInfo(user);
            if (i>0){
                result.put("code",2);
            }else{
                result.put("code",-1);
            }
        }
        if ("email".equals(updatefield)){
            user.setEmail(updatevalue);
            int i = userService2.updateUserInfo(user);
            if (i>0){
                result.put("code",2);
            }else{
                result.put("code",-1);
            }
        }
        if ("telephone".equals(updatefield)){
            user.setTelephone(updatevalue);
            int i = userService2.updateUserInfo(user);
            if (i>0){
                result.put("code",2);
            }else{
                result.put("code",-1);
            }
        }
        ActionContext.getContext().getValueStack().set("jsonData", JSONObject.fromObject(result));
        return SUCCESS;
    }
    public String addUser(){
        int i = userService2.Register(user);
        if(i>0){
            flag = true;
        }else{
            flag = false;
        }
        return SUCCESS;
    }
}
