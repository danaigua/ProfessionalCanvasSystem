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
    <jsp:include page="common/head.jsp"></jsp:include>
    <jsp:include page="common/manu.jsp"></jsp:include>
        <div class="layui-body layui-tab-content site-demo site-demo-body">
            <div class="layui-tab-item layui-show">
                <div class="layui-main">
                    <div class="bread"><jsp:include page="common/nav.jsp"></jsp:include></div>
                        <div class="layuitable">
                            <table class="layui-hide" id="users" lay-filter="test"></table>
                        </div>
                </div>
            </div>
        </div>
    <%--<jsp:include page="<%=mainPage%>"></jsp:include>--%>
    <jsp:include page="common/foot.jsp"></jsp:include>
</div>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
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
                {field:'userId', width:160, title: 'ID', sort: true}
                ,{field:'userName', width:160, title: '用户名', edit: 'text'}
                ,{field:'userPassword', width:160, title: '密码',  edit: 'text'}
                ,{field:'telephone', width:160, title: '手机号码', edit: 'text'}
                ,{field:'email', width:160, title: '邮箱',  edit: 'text'}
                ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:100}
            ]]

        });
        //监听行工具事件
        table.on('tool(test)', function(obj){
            var data = obj.data;
            var layEvent  = obj.event;
            switch (layEvent) {
                case 'del':
                    layer.confirm('确定要删除该用户？', function(index){
                        $.post("deleteUser",{id:data.userId},function (ret) {
                            if(ret.code=="1"){
                                layer.msg(ret.msg,{ icon: 1, time: 1500}, function () {
                                    //删除成功
                                    obj.del();
                                    layer.close(index);
                                });
                            }else{
                                layer.alert(ret.msg, { icon: 2},function () {
                                    layer.close(index);
                                    window.location.reload();
                                });
                            }
                        });

                    });
                    break;
            }
        });

        //编辑（test）是layui过滤器
        table.on('edit(test)', function(obj){
            var value = obj.value //得到修改后的值
                ,data = obj.data //得到所在行所有键值
                ,field = obj.field; //得到字段
            layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
        });
    });

</script>
</body>
</html>
