<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: 12952
  Date: 2019/3/14
  Time: 23:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="echarts-all.js"></script>
    <script src="jquery.js"></script>
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
</head>

<body>
<%--<script type="text/javascript">--%>
<%--$(document).ready(function () {--%>
<%--$("button").click(function () {--%>


<%--$.ajax({--%>
<%--type: 'post',	//传输类型--%>
<%--async: true,	//同步执行--%>
<%--url: 'UserController!selectAlla.action',	//web.xml中注册的Servlet的url-pattern--%>
<%--data: {},//json--%>
<%--dataType: 'json', //返回数据形式为json--%>
<%--success: function (result) {--%>
<%--if (result) {--%>
<%--for (var i = 0; i < result.length; i++) {--%>
<%--console.log(result[i].userId);--%>
<%--}--%>
<%--}--%>
<%--}--%>
<%--})--%>

<%--})--%>
<%--});--%>
<%--</script>--%>
<a href="selectAll.action">点击</a>
<table>
    <tr>
        <td>id</td>
    </tr>
    <tr>
        <td><s:iterator value="%{userList}" var="user">
            ${userId}
        </s:iterator></td>
    </tr>
</table>
<button type="button">点击</button>
</body>
</html>
