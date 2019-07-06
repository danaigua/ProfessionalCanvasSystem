package com.job.controller;

import com.job.Utils.ResponseUtil;
import com.job.pojo.Admin;
import com.job.pojo.JobInfo;
import com.job.pojo.Resume;
import com.job.pojo.User;
import com.job.service.impl.AdminServiceImpl;
import com.job.service.impl.JobInfoServiceImpl;
import com.job.service.impl.ResumeServiceImpl;
import com.job.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import net.sf.json.JSONObject;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AdminController extends ActionSupport  implements ServletRequestAware {
    private Admin admin;
    private String error;
    private List<User> userList;
    private String adminId;
    private String password;

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    public String getAdminId() {
        return adminId;
    }

    public void setAdminId(String adminId) {
        this.adminId = adminId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<User> getUserList() {
        return userList;
    }
    private HttpServletRequest request;

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
    @Resource
    private ResumeServiceImpl resumeService;
    @Resource
    private JobInfoServiceImpl jobInfoService;

    public String loginBackstage(){

        Admin admin1 = adminService.loginBackstage(admin);
        if (admin1!=null){
            /**
             * 管理员的简历列表
             */
            List<Resume> resumeList = new ArrayList<Resume>();
            /**
             * 通过管理员id 查找工作
             */
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("admin",admin1.getAdminId());
            List<JobInfo> byAdminId = jobInfoService.findByAdminId(map);
            /**
             * 通过工作id查找简历
             */
            if (byAdminId.size() > 0){
                for (int i = 0; i < byAdminId.size(); i++) {
                    List<Resume> resumes = resumeService.finResumeByJobId(byAdminId.get(i).getId());
                    for (int j = 0; j < resumes.size(); j++) {
                        if(resumes.size() > 0){
                            resumeList.add(resumes.get(j));
                        }
                    }
                }
            }
            //存入管理员对象
            ActionContext context = ActionContext.getContext();
            Map<String, Object> session = context.getSession();
            //将管理员存到session中
            session.put("currentAdmin",admin1);
            //将与管理员有关的简历放到session中
            /**
             * 通过管理员查找工作
             * 通过工作查找简历
             */

            System.out.println(resumeList);


            session.put("resumeList",resumeList);
            System.out.println(admin1.getType());
            List<User> userList = userService.selectAll();
            System.out.println(userList);
            if (admin1.getType().equals("admin")) {
                //查询所有的成员展示在成员管理,struts2会把他存入值栈中，然后用jsp调用
                userList = userService.selectAll();
                return "loginOri";
            }else{
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
    public String adminLogOut(){
        HttpSession session=request.getSession();
        session.removeAttribute("currentAdmin");
        return "logOut";
    }
    public String changeAdminPassword() throws Exception {
        Admin admin = new Admin();
        admin.setAdminId(adminId);
        admin.setAdminPassword(password);
        int i = adminService.updateAdminInfo(admin);
        JSONObject resultJson=new JSONObject();
        if(i>0){
            resultJson.put("success", true);
        }else{
            resultJson.put("errorMsg", "修改密码失败");
        }
        ResponseUtil.write(resultJson, ServletActionContext.getResponse());
        return null;
    }

    public void setServletRequest(HttpServletRequest request) {
        this.request = request;
    }
}
