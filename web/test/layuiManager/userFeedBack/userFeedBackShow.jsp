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
                    <i class="bread_theme">反馈用户的Id:</i>
                    <span class="bread_text text_margin">${feedback.userId}</span>
                    <i class="bread_theme">反馈类型:</i>
                    <span class="bread_text">${feedback.feedbacktitle}</span>
                </p>
                <p class="bread_box">
                    <i class="bread_theme">反馈状态:</i>
                    <span class="bread_text text_margin">${feedback.feedbackStatus}</span>
                    <i class="bread_theme">反馈内容:</i>
                    <span class="bread_text">${feedback.feedbackInfo}</span>
                </p>  </p>
                <div class="breadImg">
                    <h2 class="breadImg_theme">反馈图片</h2>
                    <div class="ImgBox">
                        <i class="ImgBox_tu">反馈图片</i>
                        <img src="${pageContext.request.contextPath}/userImage/${feedback.feedbackImg}"  class="ImgBox_img" height="100%" width="100%">
                    </div>
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
