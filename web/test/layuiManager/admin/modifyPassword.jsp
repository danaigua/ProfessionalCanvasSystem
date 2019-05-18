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
                <table align="center">
                    <tr>
                        <td><label>用户名：</label></td>
                        <td>
                            <input type="text" id="userName" value="${currentAdmin.adminName }" readonly="readonly" />
                        </td>
                    </tr>
                    <tr>
                        <td><label>原密码：</label></td>
                        <td><input type="password" id="oldPassword" /></td>
                    </tr>
                    <tr>
                        <td><label>新密码：</label></td>
                        <td><input type="password" id="newPassword" /></td>
                    </tr>
                    <tr>
                        <td><label>确认新密码：</label></td>
                        <td><input type="password" id="newPassword2" /></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="button" class="btn  btn-primary" value="提交" onclick="submitForm()"/>
                        </td>
                        <td>
                            <input type="button" class="btn  btn-primary" value="重置" onclick="resetValue()"/>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <%--<jsp:include page="<%=mainPage%>"></jsp:include>--%>
    <jsp:include page="../common/foot.jsp"></jsp:include>
</div>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script src="${pageContext.request.contextPath}/test/layuiManager/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript">
    function submitForm(){
        var adminId='${currentAdmin.adminId}';
        var password='${currentAdmin.adminPassword}';
        var oldPassword=$("#oldPassword").val();
        var newPassword=$("#newPassword").val();
        var newPassword2=$("#newPassword2").val();
        if(oldPassword==null || oldPassword==""){
            alert("原密码不能为空！");
            return false;
        }
        if(newPassword==null || newPassword==""){
            alert("新密码不能为空！");
            return false;
        }
        if(newPassword2==null || newPassword2==""){
            alert("确认新密码不能为空！");
            return false;
        }
        if(password!=oldPassword){
            alert("原密码错误！");
            return false;
        }
        if(newPassword!=newPassword2){
            alert("确认新密码不一致！");
            return false;
        }

        $.post("userSave",{adminId:adminId,password:newPassword},
            function(result){
                var result=eval('('+result+')');
                if(result.errorMsg){
                    alert(result.errorMsg);
                }else{
                    alert("密码修改成功，下一次登录生效！");
                    resetValue();
                }
            }
        );
    }

    function resetValue(){
        $("#oldPassword").val("");
        $("#newPassword").val("");
        $("#newPassword2").val("");
    }
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
