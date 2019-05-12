package com.job.controller;

import com.job.pojo.News;
import com.job.service.impl.NewsServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class NewsManagerController extends ActionSupport {
    private News news;
    private int limit = 1;
    private int page = 1;
    private String updateid;
    private String updatefield;
    private String updatevalue;
    private int newsId;
    private Map<String, Object> result;
    private List<News> newsList;
    @Resource
    private NewsServiceImpl newsService;

    public News getNews() {
        return news;
    }

    public void setNews(News news) {
        this.news = news;
    }

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
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

    public int getNewsId() {
        return newsId;
    }

    public void setNewsId(int newsId) {
        this.newsId = newsId;
    }

    public Map<String, Object> getResult() {
        return result;
    }

    public void setResult(Map<String, Object> result) {
        this.result = result;
    }

    /**
     * 删除
     * @return
     */
    public String delete(){
        result = new HashMap<String, Object>();
        result.put("msg","");
        int i = newsService.newsDelete(newsId);
        if (i > 0){
            result.put("code", 1);
        }else{
            result.put("code", -1);
        }
        ActionContext.getContext().getValueStack().set("jsonData", JSONObject.fromObject(result));
        return SUCCESS;
    }

    /**
     * 列表
     * @return
     */
    public String list(){
        result = new HashMap<String, Object>();
        result.put("msg","");
        result.put("code",0);
        newsList = newsService.newsList(page, limit);
        result.put("count",newsService.selectAll().size());
        JSONArray newses = JSONArray.fromObject(newsList);
        result.put("data", newses);
        ActionContext.getContext().getValueStack().set("jsonData", JSONObject.fromObject(result));
        return SUCCESS;
    }

    /**
     * 添加
     * @return
     */
    public String add(){
        newsService.newsAdd(news);
        return SUCCESS;
    }

    /**
     * 修改
     * @return
     */
    public String update(){
        News news1 = new News();
        news1.setNewsId(newsId);
        result = new HashMap<String, Object>();
        if ("newsTitle".equals(updatefield)){
            news1.setNewsTitle(updatevalue);
        }else if ("newsInfo".equals(updatefield)){
            news1.setNewsInfo(updatevalue);
        }else if ("bestWeight".equals(updatefield)){
            news1.setBestWeight(Integer.parseInt(updatevalue));
        }else if ("newsAuthor".equals(updatefield)){
            news1.setNewsAuthor(updatevalue);
        }else if ("status".equals(updatefield)){
            news1.setStatus(updatevalue);
        }
        result = new HashMap<String, Object>();
        int i = newsService.newUpdate(news1);
        if (i > 0){
            result.put("code", 1);
        }else{
            result.put("code", -1);
        }
        ActionContext.getContext().getValueStack().set("jsonData", JSONArray.fromObject(result));
        return SUCCESS;
    }

}
