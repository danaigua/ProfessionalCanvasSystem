package com.job.controller;

import com.job.pojo.Admin;
import com.job.pojo.JobInfo;
import com.job.pojo.User;
import com.job.service.impl.AdminServiceImpl;
import com.job.service.impl.JobInfoServiceImpl;
import com.job.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;
import java.util.Map;

public class AdminController extends ActionSupport {
    private Admin admin;
    private String error;
    private List<User> userList;
    public List<User> getUserList() {
        return userList;
    }

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }

    public Admin getAdmin() {
        return admin;
    }

    public void setAdmin(Admin admin) {
        this.admin = admin;
    }
    private HttpServletResponse response;
    @Resource
    private AdminServiceImpl adminService;
    @Resource
    private UserServiceImpl userService;
    public String loginBackstage(){
        Admin admin1 = adminService.loginBackstage(admin);
        if (admin1!=null){
            //存入管理员对象
            ActionContext context = ActionContext.getContext();
            Map<String, Object> session = context.getSession();
            session.put("currentAdmin",admin1);
            System.out.println(admin1.getType());
            List<User> userList = userService.selectAll();
            System.out.println(userList);
            if (admin1.getType().equals("admin")) {
                //查询所有的成员展示在成员管理,struts2会把他存入值栈中，然后用jsp调用
                userList = userService.selectAll();
//                System.out.println(1);
                return "loginOri";
            }else{
//                System.out.println(2);
                return "loginSuper";

            }
        }else{
            error = "您不是管理员或者密码错误，请重新登陆";

            return "error";

        }

    }
    public String ResAdmin() throws IOException {
        int i = adminService.ResAdmin(admin);
        if (i != 0){
            return SUCCESS;
        }else{
            return ERROR;
        }

    }
    //返回成功的数据给后端
    public String RetResAdminInfo(){
        int j = adminService.ResAdmin(admin);
        String s = "success";
        if (j != 0){
            return SUCCESS;
        }else{
            return null;
        }
    }

}
