package com.job.controller;

import com.job.pojo.User;
import com.job.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ServletResponseAware;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

public class UserController extends ActionSupport implements ServletResponseAware {
    private User user;
    private String error;
    private String Info;
    private List<User> userList;


    private HttpServletResponse response;

    public List<User> getUserList() {
        return userList;
    }

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }

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
    public String ChangeInfo() {
        int i = userService.UpdateInfo(user);
        if (i > 0) {
            Info = "成功修改";
            System.out.println(Info);
            return "success";
        } else {
            Info = "修改失败";
            System.out.println(Info);
            return "error";
        }
    }

    //登陆
    public String login() {
        User user1 = userService.login(user);
        if (user1 == null) {
            this.error = "用户名密码错误";
            return "error";
        } else {

            ActionContext actionContext = ActionContext.getContext();
            Map<String, Object> session = actionContext.getSession();
            session.put("currentUser", user1);
            return "success";
        }
    }

    //注册
    public String Register() {
        int register = userService.Register(user);
        if (register != 0) {
            return "success";
        } else {
            return "error";
        }
    }

    //忘记密码
    public String ForgetPassword() {
        int i = userService.ForgetPassword(user);
        //String ConfirmPassword =  httpServletRequest.getParameter("ConfirmPassword");
        if (i != 0) {
            return "success";
        } else {
            return "error";
        }
    }

    //登陆主页面
    public String LoginHomeIndex() {
        if (user != null) {
            return "successLogin";
        } else {
            return "errorLogin";
        }

    }

    //删除用户
    public String DeleteUser() throws IOException {
        int i = userService.DeleteUser(user);
        if (i > 0) {
            response.setContentType("text/html;charset=UTF-8");
            response.setCharacterEncoding("UTF-8");//防止弹出的信息出现乱码
            PrintWriter out = response.getWriter();
            out.print("<script>alert('成功删除！')</script>");
            out.print("<script>window.location.href='http://localhost:8080/ProfessionalCanvasSystem_war/Manger/Super_Admin/superMember.jsp'</script>");
            out.flush();
            out.close();
            return null;
        } else {
            response.setContentType("text/html;charset=UTF-8");
            response.setCharacterEncoding("UTF-8");
            PrintWriter out = response.getWriter();

            out.print("<script>alert('删除失败，请求超时！')</script>");
            out.print("<script>window.location.href='http://localhost:8080/ProfessionalCanvasSystem_war/Manger/Super_Admin/superMember.jsp'</script>");
            out.flush();
            out.close();
            return null;
        }
    }

    //查询所有，测试的时候用
    public String selectAll() throws IOException {
         userList = userService.selectAll();
        return SUCCESS;
    }
    public String helloWorld(){
        return SUCCESS;
    }
    public void setServletResponse(HttpServletResponse response) {
        this.response = response;
    }
}
