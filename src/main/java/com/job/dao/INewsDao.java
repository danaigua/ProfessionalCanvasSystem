package com.job.dao;

import com.job.pojo.News;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface INewsDao {
    /**
     * 分页获取新闻信息
     * @param page
     * @param limit
     * @return
     */
    List<News> newsList(@Param(value = "page")int page, @Param(value = "limit")int limit);

    /**
     * 新闻信息修改
     * @param news
     * @return
     */
    int newUpdate(News news);

    /**
     * 新闻信息删除
     * @param id
     * @return
     */
    int newsDelete(@Param(value = "newsId") int newsId);

    /**
     * 新闻信息增加
     * @param news
     * @return
     */
    int newsAdd(News news);

    /**
     * 查出所有的新闻条目
     * @return
     */
    List<News> selectAll();

}
