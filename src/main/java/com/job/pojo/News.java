package com.job.pojo;

public class News {
    //新闻发布系统的model类
    private String newsTitle;
    private String newsInfo;
    private int newsId;
    private int bestWeight;
    private String newsAuthor;
    private String status;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getNewsAuthor() {
        return newsAuthor;
    }

    public void setNewsAuthor(String newsAuthor) {
        this.newsAuthor = newsAuthor;
    }

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

    public int getNewsId() {
        return newsId;
    }

    public void setNewsId(int newsId) {
        this.newsId = newsId;
    }

    public int getBestWeight() {
        return bestWeight;
    }

    public void setBestWeight(int bestWeight) {
        this.bestWeight = bestWeight;
    }
}
