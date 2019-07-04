package com.job.service;

import com.job.pojo.Monitor;

import java.util.List;
import java.util.Map;

public interface IMonitorService {
    /**
     * 修改监听数值
     * @param monitor
     * @return
     */
    public Integer update(Monitor monitor);

    /**
     * 查找监听对象
     * @return
     */
    public Monitor findMonitor(Map<String, Object> map);

    /**
     * 添加监听对象
     * @param monitor
     * @return
     */
    public Integer addMonitor(Monitor monitor);

    /**
     * 查找搜索的关键词
     * @return
     */
    public List<Monitor> findSearchKeyWord();

    /**
     * 查找搜索的地址
     * @return
     */
    public List<Monitor> findSearchAddr();
}
