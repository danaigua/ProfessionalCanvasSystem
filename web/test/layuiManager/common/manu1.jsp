<%--
  Created by IntelliJ IDEA.
  User: 12952
  Date: 2019/4/27
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
<!-- [if lt IE 9]> -->
<script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
<script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
        <ul class="layui-nav layui-nav-tree layui-inline " lay-filter="demo " style="margin-right: 10px;">
            <li class="layui-nav-item  layui-nav-itemed">
                <a href="javascript:;">求职资料管理<span class="layui-nav-more"></span></a>
                <dl class="layui-nav-child">
                    <dd><a href="${pageContext.request.contextPath}/test/layuiManager/ordinaryManager.jsp">增加求职资料</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item  layui-nav-itemed">
                <a href="javascript:;">职位资料管理<span class="layui-nav-more"></span></a>
                <dl class="layui-nav-child">
                    <dd><a href="${pageContext.request.contextPath}/test/layuiManager/ordinary/ordinaryJobsManager.jsp">求职岗位管理</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item  layui-nav-itemed">
                <a href="javascript:;">简历管理<span class="layui-nav-more"></span></a>
                <dl class="layui-nav-child">
                    <dd><a href="${pageContext.request.contextPath}/test/layuiManager/resume/resume1.jsp">接收到的简历</a></dd>
                </dl>
            </li>
        </ul>
    </div>
</div>
</body>
</html>
