package com.job.service;

import com.job.pojo.News;

import java.util.List;

public interface INewsService {
    List<News> newsList(int page, int limit);
    int newUpdate(News news);
    int newsDelete(int newsId);
    int newsAdd(News news);
    List<News> selectAll();
}
