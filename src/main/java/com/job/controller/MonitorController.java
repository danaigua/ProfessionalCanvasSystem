package com.job.controller;

import com.job.pojo.Monitor;
import com.job.service.impl.MonitorServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MonitorController extends ActionSupport{
    private List<Monitor> monitors;

    @Resource
    private MonitorServiceImpl monitorService;

    public List<Monitor> getMonitors() {
        return monitors;
    }

    public void setMonitors(List<Monitor> monitors) {
        this.monitors = monitors;
    }

    public String getSearchKeyWordAndAddr(){
        Map<String, Object> result = new HashMap<String, Object>();
        List<Monitor> monitors1 = monitorService.findSearchKeyWord().subList(0, 5);
        List<Monitor> monitors2 = monitorService.findSearchAddr();
        JSONArray array = JSONArray.fromObject(monitors1);
        JSONArray array2 = JSONArray.fromObject(monitors2);
        result.put("data",array);
        result.put("data2",array);
        ActionContext.getContext().getValueStack().set("jsonData", JSONObject.fromObject(result));
        return SUCCESS;
    }

    /**
     * 清理缓存
     * @return
     */
    public String clearInternal(){

        return SUCCESS;
    }

}
