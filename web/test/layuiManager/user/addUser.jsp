<%--
  Created by IntelliJ IDEA.
  User: 12952
  Date: 2019/4/27
  Time: 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>大数据智能求职系统后台</title>
    <link href="${pageContext.request.contextPath}/test/layuiManager/css/style.css"
          rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/test/layuiManager/layui/css/layui.css" media="all">
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <jsp:include page="../common/head.jsp"></jsp:include>
    <jsp:include page="../common/manu.jsp"></jsp:include>
    <div class="layui-body layui-tab-content site-demo site-demo-body">
        <div class="layui-tab-item layui-show">
            <div class="layui-main">
                <div class="bread"><jsp:include page="../common/nav.jsp"></jsp:include></div>
                <div class="layuitable">
                    <form class="layui-form" action="addUser" id="form">
                        <div class="layui-form-item">
                            <label class="layui-form-label">用户名</label>
                            <div class="layui-input-block">
                                <input type="text" name="user.userName" lay-verify="title" autocomplete="off" placeholder="请输入用户名" class="layui-input">
                            </div>
                            <br>
                            <label class="layui-form-label">密码</label>
                            <div class="layui-input-block">
                                <%--<input type="password" name="user.userPassword" lay-verify="pass" placeholder="请输入密码" autocomplete="off" class="layui-input">--%>
                                <input type="password" name="user.userPassword"  lay-verify="pass" autocomplete="off" placeholder="请输入密码" class="layui-input">
                            </div>
                            <br>
                            <label class="layui-form-label">手机号码</label>
                            <div class="layui-input-block">
                                <input type="text" name="user.telephone" lay-verify="title" autocomplete="off" placeholder="请输入手机号码" class="layui-input">
                            </div>
                            <br>
                            <label class="layui-form-label">邮箱</label>
                            <div class="layui-input-block">
                                <input type="text" name="user.email" lay-verify="title" autocomplete="off" placeholder="请输入邮箱" class="layui-input">
                            </div>
                            <br>
                            <div class="layui-input-block">
                                <%--lay-submit=""--%>
                                <button class="layui-btn"  lay-filter="demo1">添加</button>
                                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <%--<jsp:include page="<%=mainPage%>"></jsp:include>--%>
    <jsp:include page="../common/foot.jsp"></jsp:include>
</div>
<script src="${pageContext.request.contextPath}/test/layuiManager/layui/layui.js" charset="utf-8"></script>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
<script>
    layui.use('form', function(){
        var form = layui.form
            ,layer = layui.layer;
        form.verify({
            title: function(value){
                if(value.length < 5){
                    return '至少得5个字符';
                }
            }
            ,pass: [
                /^[\S]{6,12}$/
                , '密码必须6到12位，且不能出现空格'
            ]
        });
        //监听提交
        form.on('submit(demo1)', function(data){
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })
            return false;
        });
    })
</script>
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
