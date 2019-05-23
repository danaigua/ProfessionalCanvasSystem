<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>大数据智能求职系统后台</title>
    <link href="${pageContext.request.contextPath}/test/layuiManager/css/style1.css"
          rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/test/layuiManager/layui/css/layui.css" media="all">
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <jsp:include page="../common/head.jsp"></jsp:include>
    <jsp:include page="../common/manu.jsp"></jsp:include>
    <div class="layui-body layui-tab-content site-demo site-demo-body">
        <div class="layui-tab-item layui-show">
            <div class="layui-main buLay">
                <div class="bread"><jsp:include page="../common/nav.jsp"></jsp:include></div>
                <p class="bread_box">
                    <i class="bread_theme">公司所在的城市 :</i>
                    <span class="bread_text text_margin">${companyaudit.companyAddress}</span>
                    <i class="bread_theme">公司名称 :</i>
                    <span class="bread_text">${companyaudit.companyName}</span>
                </p>
                <p class="bread_box">
                    <i class="bread_theme">公司联系电话 :</i>
                    <span class="bread_text text_margin"${companyaudit.companyTelephone}></span>
                    <i class="bread_theme">公司邮箱 :</i>
                    <span class="bread_text">${companyaudit.companyEmail}</span>
                </p>
                <p class="bread_box">
                    <i class="bread_theme">注册号 :</i>
                    <span class="bread_text">${companyaudit.companyOther}</span>
                </p>
                <div class="breadImg">
                    <h2 class="breadImg_theme">审核图片</h2>
                    <div class="ImgBox">
                        <i class="ImgBox_tu">审核图片</i>
                        <img src="${pageContext.request.contextPath}/userImage/${companyaudit.companyImg1}"  class="ImgBox_img" height="100%" width="100%">
                    </div>
                    <div class="ImgBox">
                        <i class="ImgBox_tu">审核图片</i>

                        <img src="${pageContext.request.contextPath}/userImage/${companyaudit.companyImg2}"  class="ImgBox_img" height="100%" width="100%">
                    </div>
                    <div class="ImgBox">
                        <i class="ImgBox_tu">审核图片</i>
                        <img src="${pageContext.request.contextPath}/userImage/${companyaudit.companyImg3}"  class="ImgBox_img" height="100%" width="100%">
                    </div>
                    <div class="ImgBox">
                        <i class="ImgBox_tu">审核图片</i>
                        <img src="${pageContext.request.contextPath}/userImage/${companyaudit.companyImg4}"  class="ImgBox_img" height="100%" width="100%">
                    </div>
                    <div class="ImgBox">
                        <i class="ImgBox_tu">审核图片</i>
                        <img src="${pageContext.request.contextPath}/userImage/${companyaudit.companyImg5}"  class="ImgBox_img" height="100%" width="100%">
                    </div>
            </div>
        </div>
    </div>
    <%--<jsp:include page="<%=mainPage%>"></jsp:include>--%>
    <jsp:include page="../common/foot.jsp"></jsp:include>
</div>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/test/layuiManager/layui/layui.js" charset="utf-8"></script>
</body>
</html>
