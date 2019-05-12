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
                    <form class="layui-form" action="newsAdd" id="form">
                        <div class="layui-form-item">
                            <label class="layui-form-label">标题:</label>
                            <div class="layui-input-block">
                                <input type="text" name="news.newsTitle" lay-verify="title" autocomplete="off" placeholder="请输入新闻标题" class="layui-input" required>
                            </div>
                            <br>
                            <label class="layui-form-label">作者:</label>
                            <div class="layui-input-block">
                                 <input type="text" name="news.newsAuthor"  lay-verify="pass" autocomplete="off" placeholder="请输入该条新闻的作者" class="layui-input" required>
                            </div>
                            <br>
                            <label class="layui-form-label">权重:</label>
                            <div class="layui-input-block">
                                <input type="text" name="news.bestWeight"  lay-verify="pass" autocomplete="off" placeholder="请输入该条新闻的权重(权重大的将会放在前面最高一百)" class="layui-input" required>
                            </div>
                            <br>
                            <textarea name="news.newsInfo" id="editor"></textarea>
                            <br>
                            <div class="layui-input-block">
                                <%--lay-submit=""--%>
                                <button class="layui-btn"  lay-filter="demo1" name="news.status=false" >保存</button>
                                <button class="layui-btn"  lay-filter="demo1">发布</button>
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
<script src="${pageContext.request.contextPath}/test/layuiManager/ckeditor/ckeditor.js"></script>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
<%--<script type="text/javascript">CKEDITOR.replace('editor');</script>--%>
<script type="text/javascript">
    var ckeditor; //定义全局变量 ckeditor
    $(function () {//当全部DOM元素加载完毕后执行下面语句，不加此句javascript将无法找到TextBox1
        ckeditor = CKEDITOR.replace("editor"); //用CKEDITOR.replace命令将TextBox1格式化成富文本
    });
</script>
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
</body>
</html>
