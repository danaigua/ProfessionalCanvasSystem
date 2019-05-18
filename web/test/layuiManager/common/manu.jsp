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
            <li class="layui-nav-item">
                <a href="javascript:;" class="javascript:;">数据分析
                    <span class="layui-nav-more"></span>
                </a>
                <dl class="layui-nav-child">
                    <%--<dd><a href="javascript:;">数据爬取</a></dd>--%>
                    <dd><a href="javascript:;">数据监听</a></dd>
                    <%--<dd><a href="javascript:;">数据处理</a></dd>--%>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">求职资料管理<span class="layui-nav-more"></span></a>
                <dl class="layui-nav-child">
                    <dd><a href="${pageContext.request.contextPath}/test/layuiManager/job/addJob.jsp">增加求职资料</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/test/layuiManager/job/jobs.jsp">管理求职资料</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/test/layuiManager/job/company.jsp">公司管理</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">新闻管理<span class="layui-nav-more"></span></a>
                <dl class="layui-nav-child">
                    <dd><a href="${pageContext.request.contextPath}/test/layuiManager/news/addNews.jsp">新闻发布</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/test/layuiManager/news/news.jsp">新闻管理</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">用户管理<span class="layui-nav-more"></span></a>
                <dl class="layui-nav-child">
                    <dd><a href="${pageContext.request.contextPath}/test/layuiManager/user/users.jsp">用户资料</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/test/layuiManager/user/addUser.jsp">用户添加</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">管理员管理<span class="layui-nav-more"></span></a>
                <dl class="layui-nav-child">
                    <dd><a href="${pageContext.request.contextPath}/test/layuiManager/adminManager/admin.jsp">管理员资料</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/test/layuiManager/adminManager/addAdmin.jsp">管理员添加</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">用户日志管理</a></li>
            <li class="layui-nav-item"><a href="">公司审核</a></li>
        </ul>
    </div>
</div>
</body>
</html>
