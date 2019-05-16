package com.job.Utils;

public class StringUtil {
    public static boolean isNotEmpty(String s){
        if ("".equals(s) || s==null){
            return false;
        }else{
            return true;
        }
    }
    public static boolean isEmpty(String s){
        if ("".equals(s) || s==null){
            return true;
        }else{
            return false;
        }
    }
}
