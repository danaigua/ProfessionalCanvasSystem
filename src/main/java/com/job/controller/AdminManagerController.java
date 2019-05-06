package com.job.controller;

import com.job.pojo.Admin;
import com.job.service.impl.AdminServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AdminManagerController extends ActionSupport {
    private int page = 1;
    private int limit = 2;
    private Map<String, Object> result = null;
    private String adminId;
    private String updateid;
    private String updatefield;
    private String updatevalue;
    private Admin admin;

    public Admin getAdmin() {
        return admin;
    }

    public void setAdmin(Admin admin) {
        this.admin = admin;
    }

    public String getUpdateid() {
        return updateid;
    }

    public void setUpdateid(String updateid) {
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

    public String getAdminId() {
        return adminId;
    }

    public void setAdminId(String adminId) {
        this.adminId = adminId;
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

    @Resource
    private AdminServiceImpl adminService;

    /**
     * 列出所有的管理员并且分页
     * @return
     */
    public String listAllAdmin(){
        result = new HashMap<String, Object>();
        result.put("code",0);
        result.put("msg","");
        List<Admin> admins = adminService.listAllAdmin(page, limit);
        result.put("count",admins.size());
        JSONArray array = JSONArray.fromObject(admins);
        result.put("data",array);
        ActionContext.getContext().getValueStack().set("jsonData", JSONObject.fromObject(result));
        return SUCCESS;
    }

    /**
     * 删除管理员
     * code为1则删，-1不删除不成功
     * @return
     */
    public String deleteAdmin(){
        result = new HashMap<String, Object>();
        result.put("msg","");
        int i = adminService.deleteAdmin(adminId);
        if (i>0){
            result.put("code",1);
        }else{
            result.put("code",-1);
        }
        ActionContext.getContext().getValueStack().set("jsonData", JSONObject.fromObject(result));
        return SUCCESS;
    }
    /**
     * 通过动态sql来修改管理员信息
     * @param admin
     * @return
     */
    public String updateAdminInfo(){

        result = new HashMap<String, Object>();
        Admin admin = new Admin();
        admin.setAdminId(updateid);
        if ("adminName".equals(updatefield)){
            admin.setAdminName(updatevalue);
        }else if("adminPassword".equals(updatefield)){
            admin.setAdminPassword(updatevalue);
        }else if("company".equals(updatefield)){
            admin.setCompany(updatevalue);
        }else if("adminDesc".equals(updatefield)){
            admin.setAdminDesc(updatevalue);
        }
        int i = adminService.updateAdminInfo(admin);
        System.out.println(i);
        if (i > 0){
            result.put("code",1);
        }else{
            result.put("code",-1);
        }
        ActionContext.getContext().getValueStack().set("jsonData", JSONObject.fromObject(result));
        return SUCCESS;
    }

    /**
     * 添加一个普通管理员
     * @return
     */
    public String addAdmin(){
        int i = adminService.ResAdmin(admin);
        if (i > 0){
            return SUCCESS;
        }else{
            return ERROR;
        }
    }
}
