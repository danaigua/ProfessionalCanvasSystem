<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="echarts-all.js"></script>
    <script src="jquery.js"></script>
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
</head>
<body>
<table>
    <tr>
        <td>id</td>
        <td>userName</td>
        <td>userPassword</td>
        <td>email</td>
        <td>telephone</td>

    </tr>
    <tr>
        <s:iterator value="%{userList}" var="user">
    <tr>
        <td>${userId}</td>
        <td>${userName}</td>
        <td>${userPassword}</td>
        <td>${email}</td>
        <td>${telephone}</td>
        <td><a href="sa">删除</a></td>
        <td><a href="sa">编辑</a></td>
    </tr>
    </s:iterator>
    </tr>
</table>
</body>
</html>
