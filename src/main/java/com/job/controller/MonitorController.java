package com.job.controller;

import com.job.pojo.DataBean;
import com.job.pojo.Monitor;
import com.job.service.impl.MonitorServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
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

        List<DataBean> dataBeans = new ArrayList<DataBean>();
        for (int i = 0; i < 5; i++){
            DataBean dataBean = new DataBean();
            dataBean.setName(monitors1.get(i).getSearchKeyWord());
            dataBean.setValue(monitors1.get(i).getSearchKeyWordNO());
            dataBeans.add(dataBean);
        }

//        List<DataBean> dataBeans2 = new ArrayList<DataBean>();
//        for (int j = 0; j < 5; j++){
//            DataBean dataBean = new DataBean();
//            dataBean.setName(monitors1.get(j).getSearchKeyWord());
//            dataBean.setValue(String.valueOf(monitors1.get(j).getSearchKeyWordNO()));
//            dataBeans2.add(dataBean);
//        }
//

        JSONArray array = JSONArray.fromObject(dataBeans);
//        result.put("data",array);
//        JSONArray array = JSONArray.fromObject(dataBeans);
//        JSONArray array2 = JSONArray.fromObject(dataBeans2);
//        result.put("data",array);
//        result.put("data2",array);
        ActionContext.getContext().getValueStack().set("jsonData", array);
//        ActionContext.getContext().getValueStack().set("jsonData", JSONObject.fromObject(result));
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
