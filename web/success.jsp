<%--
  Created by IntelliJ IDEA.
  User: 12952
  Date: 2018/12/29
  Time: 12:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>HelloWorld</h1>
当前用户：${currentUser.telephone}
<form action="saveUserInfoInUserCenter" method="post" enctype="multipart/form-data">
    <input type="file" name = "userPic">
    <input type="file" name = "userPic1">
    <input type="hidden" id="userId" name="userId" value="10000"/>
    <input type="submit" value="保存" class="preservation" 	/>
</form>
</body>
</html>
