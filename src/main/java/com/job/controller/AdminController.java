package com.job.controller;

import com.job.pojo.Admin;
import com.job.service.impl.AdminServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import javax.annotation.Resource;
import java.util.Map;

public class AdminController extends ActionSupport {
    private Admin admin;
    private String error;
    public Admin getAdmin() {
        return admin;
    }

    public void setAdmin(Admin admin) {
        this.admin = admin;
    }

    @Resource
    private AdminServiceImpl adminService;

    public String loginBackstage(){
        Admin admin1 = adminService.loginBackstage(admin);
        if (admin1!=null){
            ActionContext context = ActionContext.getContext();
            Map<String, Object> session = context.getSession();
            session.put("currentAdmin",admin1);
            System.out.println(admin1.getType());
            if (admin1.getType().equals("admin")) {
                System.out.println(1);
                return "loginOri";
            }else{
                System.out.println(2);
                return "loginSuper";

            }
        }else{
            error = "您不是管理员或者密码错误，请重新登陆";

            return "error";

        }

    }

}
