<%--
  Created by IntelliJ IDEA.
  User: 12952
  Date: 2019/4/27
  Time: 19:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/test/layuiManager/layui/css/layui.css" media="all">
</head>
<body>
            <table class="layui-hide" id="users" lay-filter="test"></table>
<script src="${pageContext.request.contextPath}/test/layuiManager/layui/layui.js" charset="utf-8"></script>
<script>
    layui.use('table', function(){
        var table = layui.table;

        table.render({
            elem: '#users'
            ,url:'list'
            ,page: true
            ,skin: 'line' //行边框风格
            ,even: true //开启隔行背景
            ,size: 'sm' //小尺寸的表格
            ,cols: [[
                {field:'userId', width:180, title: 'ID', sort: true}
                ,{field:'userName', width:180, title: '用户名', edit: 'text'}
                ,{field:'userPassword', width:180, title: '密码',  edit: 'text'}
                ,{field:'telephone', width:180, title: '手机号码', edit: 'text'}
                ,{field:'email', width:180, title: '邮箱',  edit: 'text'}
            ]]

        });
    });
</script>
</body>
</html>
