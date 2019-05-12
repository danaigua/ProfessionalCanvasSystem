package com.job.service.impl;

import com.job.dao.INewsDao;
import com.job.pojo.News;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("newsService")
public class NewsServiceImpl implements INewsDao {
    @Resource
    private INewsDao iNewsDao;
    public List<News> newsList(int page, int limit) {
        page = (page - 1)*limit;
        return iNewsDao.newsList(page, limit);
    }

    public int newUpdate(News news) {
        return iNewsDao.newUpdate(news);
    }

    public int newsDelete(int newsId) {
        return iNewsDao.newsDelete(newsId);
    }

    public int newsAdd(News news) {
        return iNewsDao.newsAdd(news);
    }

    public List<News> selectAll() {
        return iNewsDao.selectAll();
    }
}
