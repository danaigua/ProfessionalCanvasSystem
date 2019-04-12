package com.job.pojo;

public class news {
    //新闻发布系统的model类
    private String newsTitle;
    private String newsInfo;
    private String newsId;
    private String bestWeight;

    public String getNewsTitle() {
        return newsTitle;
    }

    public void setNewsTitle(String newsTitle) {
        this.newsTitle = newsTitle;
    }

    public String getNewsInfo() {
        return newsInfo;
    }

    public void setNewsInfo(String newsInfo) {
        this.newsInfo = newsInfo;
    }

    public String getNewsId() {
        return newsId;
    }

    public void setNewsId(String newsId) {
        this.newsId = newsId;
    }

    public String getBestWeight() {
        return bestWeight;
    }

    public void setBestWeight(String bestWeight) {
        this.bestWeight = bestWeight;
    }
}
