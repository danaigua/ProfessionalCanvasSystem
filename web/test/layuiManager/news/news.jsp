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
    <link href="${pageContext.request.contextPath}/test/layuiManager/css/style1.css"
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
                <div class="layuitablebig">
                    <table class="layui-hide" id="users" lay-filter="test"></table>
                </div>
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
<script type="text/html" id="checkboxTpl">
    <input type="checkbox" name="lock" value="{{d.status}}" title="锁定" lay-filter="lockDemo" {{ d.status == true ? 'checked' : '' }}>
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
            ,url:'newsList'
            ,page: true
            ,skin: 'line' //行边框风格
            ,even: true //开启隔行背景
            ,size: 'sm' //小尺寸的表格
            ,cols: [[
                {field:'newsId', width:160, title: 'ID', sort: true}
                ,{field:'newsTitle', width:160, title: '新闻标题', edit: 'text'}
                ,{field:'bestWeight', width:160, title: '新闻权重',  edit: 'text'}
                ,{field:'newsAuthor', width:160, title: '新闻作者', edit: 'text'}
                ,{field:'status', width:80, title: '新闻状态',  edit: 'text', templet: '#checkboxTpl', unresize: true}
                ,{field:'newsInfo', width:260, title: '新闻内容',  edit: 'text'}
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
                        $.post("newsDelete",{newsId:data.newsId},function (ret) {
                            if(ret.code=="1"){
                                layer.msg('删除成功', function () {
                                    //删除成功
                                    obj.del();
                                    layer.close(index);
                                });
                            }else{
                                layer.alert('删除成功',function () {
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
            $.post("newsUpdate",{updateid:data.newsId,updatefield:field,updatevalue:value},function (ret) {
                if (ret.code=="1"){
                    layer.msg('[ID: '+ data.newId +'] ' + field + ' 字段更改为：'+ value);
                }else{
                    layer.msg('保存失败');
                }
            });

        });
        //监听锁定操作
        form.on('checkbox(lockDemo)', function(obj){
            var value = obj.value //得到修改后的值
                ,data = obj.data //得到所在行所有键值
                ,field = obj.field; //得到字段
            $.post("newsUpdate",{updateid:data.newsId, updatefield:field, updatevalue:value}, function (ret) {
                if (ret.code=="1"){
                    layer.tips(this.value + ' ' + this.name + '：'+ obj.elem.checked, obj.othis);
                }else{
                    layer.msg('保存失败');
                }
            })

        });
    });

</script>
</body>
</html>
