package com.job.controller;

import com.job.pojo.Feedback;
import com.job.service.impl.FeedbackServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

public class FeedbackController extends ActionSupport {
    private Feedback feedback;
    private List<Feedback> feedbacks = null;
    private Map<String, Object> result = null;
    @Resource
    private FeedbackServiceImpl feedbackService;

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
    public String userFeedback(){
        int i = feedbackService.userFeedbackAdd(feedback);
        return SUCCESS;
    }
    public String listFeedback(){
        feedbacks = feedbackService.userFeedbackListByteStatusIsFalse();
        result.put("code", 0);
        result.put("msg", "");
        JSONArray array = JSONArray.fromObject(feedbacks);
        result.put("data",array);
        ActionContext.getContext().getValueStack().set("jsonData", JSONObject.fromObject(result));
        return SUCCESS;
    }
}
