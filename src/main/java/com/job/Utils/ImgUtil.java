package com.job.Utils;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import java.io.File;

public class ImgUtil {

    public static String getImgName(File imgFile, String imgName) throws Exception {
        String imageName = DateUtil.getCurrentDateStr() + String.valueOf(Math.random()*10);
        String realPath = ServletActionContext.getServletContext().getRealPath("/userImage");
        String imageFile=imageName+"."+imgName.split("\\.")[1];
        System.out.println(imageFile);
        File saveFile=new File(realPath,imageFile);
        FileUtils.copyFile(imgFile, saveFile);
        return imageFile;
    }
}
