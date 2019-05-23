package com.job.controller;

import com.job.Utils.DateUtil;
import com.job.pojo.Feedback;
import com.job.service.impl.FeedbackServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import javax.annotation.Resource;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FeedbackController extends ActionSupport {
    private Feedback feedback;
    private List<Feedback> feedbacks = null;
    private Map<String, Object> result = null;
    private File feedbackImg;
    private String feedbackImgFileName;
    @Resource
    private FeedbackServiceImpl feedbackService;

    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFeedbackImgFileName() {
        return feedbackImgFileName;
    }

    public void setFeedbackImgFileName(String feedbackImgFileName) {
        this.feedbackImgFileName = feedbackImgFileName;
    }

    public File getFeedbackImg() {
        return feedbackImg;
    }

    public void setFeedbackImg(File feedbackImg) {
        this.feedbackImg = feedbackImg;
    }

    public Map<String, Object> getResult() {
        return result;
    }

    public void setResult(Map<String, Object> result) {
        this.result = result;
    }

    public List<Feedback> getFeedbacks() {
        return feedbacks;
    }

    public void setFeedbacks(List<Feedback> feedbacks) {
        this.feedbacks = feedbacks;
    }

    public Feedback getFeedback() {
        return feedback;
    }

    public void setFeedback(Feedback feedback) {
        this.feedback = feedback;
    }
    public String userFeedback() throws Exception {
        if(feedbackImg != null){
            String imageName = DateUtil.getCurrentDateStr();
            String realPath = ServletActionContext.getServletContext().getRealPath("/userImage");
            String imageFile=imageName+"."+feedbackImgFileName.split("\\.")[1];
            System.out.println(imageFile);
            File saveFile=new File(realPath,imageFile);
            FileUtils.copyFile(feedbackImg, saveFile);
//            user.setUserPicimg(imageFile);
            feedback.setFeedbackImg(imageFile);
        }else{

            feedback.setFeedbackImg("");
        }
        int i = feedbackService.userFeedbackAdd(feedback);

        return SUCCESS;
    }
    public String listFeedback(){
        result = new HashMap<String, Object>();
        feedbacks = feedbackService.userFeedbackListByteStatusIsFalse();
        result.put("code", 0);
        result.put("msg", "");
        JSONArray array = JSONArray.fromObject(feedbacks);
        result.put("data",array);
        ActionContext.getContext().getValueStack().set("jsonData", JSONObject.fromObject(result));
        return SUCCESS;
    }
    public String show(){
        result = new HashMap<String, Object>();
        System.out.println(id);
        Feedback feedback1 = new Feedback();
        feedback1.setFeedId(id);
        result.put("code", 1);
        result.put("msg", "");
        Feedback feedback2 = feedbackService.selectByteFeedbackId(feedback1);
        System.out.println(feedback2);
        Map<String, Object> session = ActionContext.getContext().getSession();
        session.put("feedback", feedback2);
        ActionContext.getContext().getValueStack().set("jsonData", JSONObject.fromObject(result));
        return SUCCESS;
    }
}
