package com.job.controller;

import com.job.Utils.DateUtil;
import com.job.Utils.StringUtil;
import com.job.pojo.Mesessage;
import com.job.pojo.User;
import com.job.pojo.UserAspriation;
import com.job.service.impl.UserAspriationServiceImpl;
import com.job.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.aspectj.bridge.Message;

import javax.annotation.Resource;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserManagerController extends ActionSupport {
    @Resource
    private UserServiceImpl userService2;
    @Resource
    private UserAspriationServiceImpl userAspriationService;


    private int page = 1;
    private int limit = 1;
    private Map<String, Object> result = null;
    private int id;
    private User user;
    private int updateid;
    private String updatefield;
    private String updatevalue;
    private boolean flag;
    private String userPic1;

    private String userId;

    private File userPic;
    private String userPicFileName;
    private String info;

    private UserAspriation userAspriation;

    public UserAspriation getUserAspriation() {
        return userAspriation;
    }

    public void setUserAspriation(UserAspriation userAspriation) {
        this.userAspriation = userAspriation;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String getUserPicFileName() {
        return userPicFileName;
    }

    public void setUserPicFileName(String userPicFileName) {
        this.userPicFileName = userPicFileName;
    }


    public String getUserPic1() {
        return userPic1;
    }

    public void setUserPic1(String userPic1) {
        this.userPic1 = userPic1;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public File getUserPic() {
        return userPic;
    }

    public void setUserPic(File userPic) {
        this.userPic = userPic;
    }

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

    /**
     * 在用户个人中心修改用户个人信息
     * @return
     * @throws Exception
     */
    public String saveUserInfoInUserCenter() throws Exception {
        if(userPic != null){
            String imageName = DateUtil.getCurrentDateStr();
            String realPath = ServletActionContext.getServletContext().getRealPath("/userImage");
            String imageFile=imageName+"."+userPicFileName.split("\\.")[1];
            File saveFile=new File(realPath,imageFile);
            FileUtils.copyFile(userPic, saveFile);
            user.setUserPicimg(imageFile);
        }else{
            user.setUserPicimg("");
        }
        if(StringUtil.isNotEmpty(userId)){
            user.setUserId(Integer.parseInt(userId));
            int i = userService2.saveAndUpdateUserInfoInUserCenter(user);
            Mesessage message = new Mesessage();
            message.setInfo("修改成功，下次登陆登陆生效");
            ActionContext actionContext = ActionContext.getContext();
            Map<String, Object> session = actionContext.getSession();
            session.put("message", message);
        }else{
            int register = userService2.Register(user);
        }
        return SUCCESS;
    }
    /**
     * 修改个人中心的用户意愿
     */
    public String updateUserAspriationInUserCenter(){
        int i = userAspriationService.userUpdateAspriation(userAspriation);
        return SUCCESS;
    }
}
