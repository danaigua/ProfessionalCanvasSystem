<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 12952
  Date: 2019/4/27
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="layui-body layui-tab-content site-demo site-demo-body">
    <div class="layui-tab-item layui-show" style="">
        <div class="layui-main">
            <span class="layui-breadcrumb">
                <c:choose>
                    <c:when test="${navCode==null }">
                        当前位置：<a href="${pageContext.request.contextPath}/test/layui后台/main.jsp">主页</a>
                    </c:when>
                    <c:otherwise>${navCode }</c:otherwise>
                </c:choose>
            </span>
        </div>
    </div>
</div>
</body>
</html>
