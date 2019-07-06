<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>大数据智能求职系统后台</title>
    <link href="${pageContext.request.contextPath}/test/layuiManager/css/style1.css"
          rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/test/layuiManager/layui/css/layui.css" media="all">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/Home/css/user1.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Home/css/resume1.css">
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <jsp:include page="../common/head.jsp"></jsp:include>
    <jsp:include page="../common/manu1.jsp"></jsp:include>
    <div class="layui-body layui-tab-content site-demo site-demo-body">
        <div class="layui-tab-item layui-show">
            <div class="layui-main">
                <div class="bread"><jsp:include page="../common/nav.jsp"></jsp:include></div>
                <!-- 个人简历 -->
                <div class="resume_div">
                    <h1 class="resume_theme">个人简历</h1>
                    <form action="resumeUpdate" class="resume_form" enctype="multipart/form-data">
                        <table border="1" class="resume" cellspacing="0">
                            <tr class="resume_tr">
                                <td class="resume_data resume_cell" rowspan="4">个人资料</td>
                                <td class="resume_name resume_cell">姓名</td>
                                <td class="resume_cell">
                                    <input value="${resume.name}" type="text" class="resume_input" readonly/>
                                </td>
                                <td class="resume_gender resume_cell">性别</td>
                                <td class="resume_cell">
                                    <input type="text" value="${resume.sex}" class="resume_input" required list="gender" readonly/>
                                </td>
                                <td class="resume_birth resume_cell">出生年月</td>
                                <td class="resume_cell">
                                    <input type="text" class="resume_input" name="resume.resumeBirthday" value="${resume.resumeBirthday}" readonly onclick="WdatePicker()"/>
                                </td>
                            </tr>
                            <tr class="resume_tr">
                                <td class="resume_nation resume_cell">民族</td>
                                <td class="resumeNat_input resume_cell">
                                    <input type="text" name="resume." value="${resume.resumeNation}" class="resume_input" readonly/>
                                </td>
                                <td class="resume_phone resume_cell">电话</td>
                                <td class="resumePho_input resume_cell">
                                    <input type="text" value="${resume.telephone}" class="resume_input" readonly/>
                                </td>
                                <td class="resume_education resume_cell">学历</td>
                                <td class="resumeEdu_input resume_cell">
                                    <input type="text" value="${resume.degree}" class="resume_input" list="resu_education" readonly>
                                </td>
                            </tr>
                            <tr class="resume_tr">
                                <td class="resume_position resume_cell">应聘职位</td>
                                <td class="resumePos_input resume_cell" colspan="2">
                                    <input type="text" name="resume.resumePositionApplied" value="${resume.resumePositionApplied}" class="resume_input"readonly />
                                </td>
                                <td class="resume_address resume_cell">现所在地</td>
                                <td class="resumeAdd_input resume_cell" colspan="2">
                                    <input type="text" value="${degree.addr}" class="resume_input" readonly/>
                                </td>
                            </tr>
                            <tr class="resume_tr">
                                <td class="resume_school resume_cell">毕业院校</td>
                                <td class="resumeSch_input resume_cell" colspan="2">
                                    <input type="text" name="resume.almamater" value="${resume.almamater}" class="resume_input" readonly/>
                                </td>
                                <td class="resume_mojor resume_cell">专业</td>
                                <td class="resumeMoj_input resume_cell" colspan="2">
                                    <input type="text" name="resume.major" value="${resume.major}" class="resume_input" readonly/>
                                </td>
                            </tr>
                            <tr class="resume_tr">
                                <td class="resume_skill resume_cell">技能</td>
                                <td class="resume_languages resume_cell">外语水平</td>
                                <td class="resumeLan_input resume_cell" colspan="2">
                                    <input type="text" name="resume.englishLevel" value="${resume.englishLevel}" class="resume_input" readonly/>
                                </td>
                                <td class="resume_computer resume_cell">计算机水平</td>
                                <td class="resumeCom_input resume_cell"colspan="2">
                                    <input type="text" name="resume.computerLevel" value="${resume.computerLevel}" class="resume_input" readonly/>
                                </td>
                            </tr>
                            <tr class="resume_tr">
                                <td class="resume_winning resume_cell">获奖情况</td>

                                <td class="resumeCom_input resume_cell"colspan="6">
                                    <input type="text" name="resume.awards" value="${resume.awards}" class="resume_input" readonly/>
                                </td>
                            </tr>
                            <tr class="resume_tr">
                                <td class="resume_wexperience resume_cell">工作经历</td>

                                <td class="resumeCom_input resume_cell"colspan="6">
                                    <input type="text" name="resume.workExperience" value="${resume.workExperience}" class="resume_input" readonly>
                                    <input type="hidden" value="${resume.resumeId}" name="resume.resumeId" readonly/>
                                </td>
                            </tr>
                        </table>
                    </form>
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
