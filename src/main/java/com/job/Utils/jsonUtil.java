package com.job.Utils;

import java.util.HashMap;
import java.util.Map;

public class jsonUtil {
    public static void layuiJson(Map result,int code){
        result = new HashMap<String,Object>();
        result.put("msg","");
        result.put("code",code);

    }

}
