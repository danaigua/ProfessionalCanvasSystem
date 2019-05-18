<%--
  Created by IntelliJ IDEA.
  User: 12952
  Date: 2019/4/27
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="layui-row">
    <div class="layui-col-xs2">
        <div class="layui-row">
            <div class="grid-demo grid-demo-bg1">
                <div class="layui-col-xs10">
                    <div class="b">超级管理员</div>
                </div>
                <div class="layui-col-xs2">
                    <div class="b"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="layui-col-xs2">
        <div class="grid-demo">
            <div class="b1"></div>
        </div>
    </div>
    <div class="layui-col-xs1">
        <div class="grid-demo grid-demo-bg1">
            <div class="b2"></div>
        </div>
    </div>
    <div class="layui-col-xs2">
        <div class="grid-demo grid-demo-bg1">
            <div class="b">求职分析系统后台</div>
        </div>
    </div>
    <div class="layui-col-xs2">
        <div class="grid-demo grid-demo-bg1">
            <div class="b2"></div>
        </div>
    </div>
    <div class="layui-col-xs3">
        <div class="grid-demo">
            <div class="b3">

                <ul class="layui-nav">
                    <li class="layui-nav-item">
                        <a href="">控制台<span class="layui-badge">9</span></a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="">用户反馈<span class="layui-badge-dot"></span></a>
                    </li>
                    <li class="layui-nav-item" lay-unselect="">
                        <a href="javascript:;"><img src="//t.cn/RCzsdCq" class="layui-nav-img">${currentAdmin.adminName}</a>
                        <dl class="layui-nav-child" style="z-index: 9999;">
                            <dd><a href="javascript:;">安全管理</a></dd>
                            <dd><a href="../admin/modifyPassword.jsp">修改密码</a></dd>
                            <dd><a href="logOut">退出系统</a></dd>
                        </dl>
                    </li>
                </ul>

            </div>
        </div>
    </div>
</div>
</body>
</html>
