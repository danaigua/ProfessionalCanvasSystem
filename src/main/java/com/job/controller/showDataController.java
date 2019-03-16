package com.job.controller;


import com.job.pojo.User;
import com.job.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import net.sf.json.JSONArray;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class showDataController extends ActionSupport {
    private List<User> users;

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    @Resource
    private UserServiceImpl userService;
//    private HttpServletRequest request ;
//    private HttpServletResponse response;
    public String showData() throws IOException {
//        request.setCharacterEncoding("utf-8");
//        response.setContentType("text/html;charset=utf-8");
          users = userService.selectAll();
          users.size();
//        设置服务器响应时向JSP表示层传输数据的编码格式
//        response.setContentType("text/html; charset=utf-8");
        //ArrayList对象转化为JSON对象
//        JSONArray json = JSONArray.fromObject(users);
        //控制台显示JSON
//        System.out.println(json.toString());
        //返回到JSP
//        PrintWriter writer = response.getWriter();
//        writer.println(json);
//        writer.flush();
        //关闭输出流
//        writer.close();
        return SUCCESS;
    }

}
