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

            <span class="layui-breadcrumb">
                <c:choose>
                    <c:when test="${navCode==null }">
                        当前位置：<a href="${pageContext.request.contextPath}/test/layuiManager/main.jsp">主页</a>
                    </c:when>
                    <c:otherwise>${navCode }</c:otherwise>
                </c:choose>
            </span>

</body>
</html>
