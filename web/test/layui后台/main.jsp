<%--
  Created by IntelliJ IDEA.
  User: 12952
  Date: 2019/4/27
  Time: 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
    String mainPage = (String) request.getAttribute("mainPage");
    if (mainPage == null || mainPage.equals("")) {
        mainPage = "common/default.jsp";
    }
%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>大数据智能求职系统后台</title>
    <link href="${pageContext.request.contextPath}/test/layui后台/css/style.css"
          rel="stylesheet">
    <link
            href="${pageContext.request.contextPath}/test/layui后台/bootstrap/css/bootstrap.css"
            rel="stylesheet">
    <link
            href="${pageContext.request.contextPath}/test/layui后台/bootstrap/css/bootstrap-responsive.css"
            rel="stylesheet">
    <script src="${pageContext.request.contextPath}/test/layui后台/bootstrap/js/jQuery.js"></script>
    <script
            src="${pageContext.request.contextPath}/test/layui后台/bootstrap/js/bootstrap.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/test/layui后台/layui/css/layui.css" media="all">
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <jsp:include page="common/head.jsp"></jsp:include>
    <jsp:include page="common/manu.jsp"></jsp:include>
    <jsp:include page="common/nav.jsp"></jsp:include>
    <jsp:include page="<%=mainPage%>"></jsp:include>m
    <jsp:include page="common/foot.jsp"></jsp:include>
</div>
<script src="${pageContext.request.contextPath}/test/layui后台/layui/layui.js" charset="utf-8"></script>
<script>
    layui.use('element', function() {
        var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块

        //监听导航点击
        element.on('nav(demo)', function(elem) {
            //console.log(elem)
            layer.msg(elem.text());
        });
    });
</script>
</body>
</html>
