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
                <div class="layuitable">
                    <form class="layui-form" action="jobAdd" id="form">
                        <div class="layui-form-item">
                            <label class="layui-form-label">公司</label>
                            <div class="layui-input-block">
                                <input type="text" name="jobInfo.Company" lay-verify="title" autocomplete="off" placeholder="请输入公司名" class="layui-input" required>
                            </div>
                            <br>
                            <label class="layui-form-label">招聘部门</label>
                            <div class="layui-input-block">
                                <%--<input type="text" name="user.userPassword" lay-verify="pass" placeholder="请输入需要招聘的部门" autocomplete="off" class="layui-input">--%>
                                <input type="text" name="jobInfo.Department"  lay-verify="pass" autocomplete="off" placeholder="请输入需要招聘的部门" class="layui-input" required>
                            </div>
                            <br>
                            <label class="layui-form-label">薪资区间</label>
                            <div class="layui-input-block">
                                <input type="text" name="jobInfo.salary" lay-verify="title" autocomplete="off" placeholder="请输入招聘该职位的薪资区间" class="layui-input" required>
                            </div>
                            <br>
                            <label class="layui-form-label">工作类型</label>
                            <div class="layui-input-block">
                                <select name="jobInfo.type" lay-filter="aihao">
                                    <option >JAVA</option>
                                    <option >PYTHON</option>
                                    <option >前端</option>
                                    <option>JAVASCRIPT</option>
                                    <option>大数据</option>
                                    <option>人工智能</option>
                                    <option>PHP</option>
                                    <option>C</option>
                                    <option>运维</option>
                                    <option>区块链</option>
                                    <option>SHELL</option>
                                    <option>VB</option>
                                    <option>RUBY</option>
                                    <option>其他</option>
                                </select>
                            </div>
                            <br>
                            <label class="layui-form-label">招聘类型：</label>
                            <div class="layui-input-block">
                                <select name="jobInfo.jobTyp" lay-filter="aihao">
                                    <option >社招</option>
                                    <option >校招</option>
                                </select>
                            </div>
                            <br>
                            <label class="layui-form-label">工作：</label>
                            <div class="layui-input-block">
                                <input type="text" name="jobInfo.Job" lay-verify="title" autocomplete="off" placeholder="请输入该岗位的名称（如JAVA工程师）" class="layui-input" required>
                            </div>
                            <br>
                            <label class="layui-form-label">工作时间：</label>
                            <div class="layui-input-block">
                                <input type="text" name="jobInfo.workTime" lay-verify="title" autocomplete="off" placeholder="请输入该岗位的需要的工作时间（如996）" class="layui-input" required>
                            </div>
                            <br>
                            <label class="layui-form-label">工作经验：</label>
                            <div class="layui-input-block">
                                <input type="text" name="jobInfo.experience" lay-verify="title" autocomplete="off" placeholder="请输入该岗位的工作经验" class="layui-input">
                            </div>
                            <br>
                            <label class="layui-form-label">福利：</label>
                            <div class="layui-input-block">
                                <input type="text" name="jobInfo.Welfare" lay-verify="title" autocomplete="off" placeholder="请输入该岗位的福利" class="layui-input">
                            </div>
                            <br>
                            <label class="layui-form-label">学历要求：</label>
                            <div class="layui-input-block">
                                <input type="text" name="jobInfo.Academic" lay-verify="title" autocomplete="off" placeholder="请输入该岗位对于学历的要求" class="layui-input">
                            </div>
                            <br>
                            <label class="layui-form-label">职位描述：</label>
                            <div class="layui-input-block">
                                <input type="text" name="jobInfo.Descrive" lay-verify="title" autocomplete="off" placeholder="请输入该岗位的职位描述" class="layui-input">
                            </div>
                            <br>
                            <label class="layui-form-label">岗位要求1：</label>
                            <div class="layui-input-block">
                                <input type="text" name="jobInfo.jobRequirements1" lay-verify="title" autocomplete="off" placeholder="请输入该岗位的岗位要求1" class="layui-input">
                            </div>
                            <br>
                            <label class="layui-form-label">岗位要求2：</label>
                            <div class="layui-input-block">
                                <input type="text" name="jobInfo.jobRequirements2" lay-verify="title" autocomplete="off" placeholder="请输入该岗位的岗位要求2" class="layui-input">
                            </div>
                            <br>
                            <label class="layui-form-label">岗位要求3：</label>
                            <div class="layui-input-block">
                                <input type="text" name="jobInfo.jobRequirements3" lay-verify="title" autocomplete="off" placeholder="请输入该岗位的岗位要求3" class="layui-input">
                            </div>
                            <br>
                            <label class="layui-form-label">岗位要求4：</label>
                            <div class="layui-input-block">
                                <input type="text" name="jobInfo.jobRequirements4" lay-verify="title" autocomplete="off" placeholder="请输入该岗位的岗位要求4" class="layui-input">
                            </div>
                            <br>
                            <label class="layui-form-label">岗位要求5：</label>
                            <div class="layui-input-block">
                                <input type="text" name="jobInfo.jobRequirements5" lay-verify="title" autocomplete="off" placeholder="请输入该岗位的岗位要求5" class="layui-input">
                            </div>
                            <br>
                            <label class="layui-form-label">晋升渠道1：</label>
                            <div class="layui-input-block">
                                <input type="text" name="jobInfo.channelPromotion1" lay-verify="title" autocomplete="off" placeholder="请输入该岗位的岗位要求5" class="layui-input">
                            </div>
                            <br>
                            <label class="layui-form-label">晋升渠道2：</label>
                            <div class="layui-input-block">
                                <input type="text" name="jobInfo.channelPromotion2" lay-verify="title" autocomplete="off" placeholder="请输入该岗位的岗位要求5" class="layui-input">
                            </div>
                            <br>
                            <label class="layui-form-label">工作地址：</label>
                            <div class="layui-input-block">
                                <input type="text" name="jobInfo.Address" lay-verify="title" autocomplete="off" placeholder="请输入该岗位的工作地址" class="layui-input">
                                <input type="hidden" name="jobInfo.adminId" value="${currentAdmin.adminId}" />
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
