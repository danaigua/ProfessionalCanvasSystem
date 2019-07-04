package com.job.service.impl;

import com.job.dao.IMonitorDao;
import com.job.pojo.Monitor;
import com.job.service.IMonitorService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;
@Service("monitorService")
public class MonitorServiceImpl implements IMonitorService {
    @Resource
    private IMonitorDao monitorDao;
    public Integer update(Monitor monitor) {
        return monitorDao.update(monitor);
    }

    public Monitor findMonitor(Map<String, Object> map) {
        return monitorDao.findMonitor(map);
    }

    public Integer addMonitor(Monitor monitor) {
        return monitorDao.addMonitor(monitor);
    }

    public List<Monitor> findSearchKeyWord() {
        return monitorDao.findSearchKeyWord();
    }

    public List<Monitor> findSearchAddr() {
        return monitorDao.findSearchAddr();
    }
}
