<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>大数据智能求职系统后台</title>
    <link href="${pageContext.request.contextPath}/test/layuiManager/css/style1.css"
          rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/test/layuiManager/layui/css/layui.css" media="all">
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <jsp:include page="../common/head1.jsp"></jsp:include>
    <jsp:include page="../common/manu1.jsp"></jsp:include>
    <div class="layui-body layui-tab-content site-demo site-demo-body">
        <div class="layui-tab-item layui-show">
            <div class="layui-main">
                <div class="bread"><jsp:include page="../common/nav.jsp"></jsp:include></div>
                <div class="layuitablebig">
                    <div class="layui-form">
                        <table class="layui-table">
                            <colgroup>
                                <col width="150">
                                <col width="250">
                                <col width="300">
                                <col>
                            </colgroup>
                            <thead>
                            <tr>
                                <th>姓名</th>
                                <th>性别</th>
                                <th>简介</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="resume1" items="${resumeList}">
                                <tr>
                                    <td>${resume1.name}</td>
                                    <td>${resume1.sex}</td>
                                    <td>${resume1.workExperience}</td>
                                    <td><a href="findResumeById1?id=${resume1.resumeId}">查看详情</a></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--<jsp:include page="<%=mainPage%>"></jsp:include>--%>
    <jsp:include page="../common/foot.jsp"></jsp:include>
</div>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>


<script src="${pageContext.request.contextPath}/test/layuiManager/layui/layui.js" charset="utf-8"></script>
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
