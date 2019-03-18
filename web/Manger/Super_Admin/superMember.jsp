<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
1
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>大数据后台管理系统</title>
    <link rel="stylesheet" href="superMenber.css">
</head>
<body>
<div class="dataBox">    <!-- 外部大盒子 -->
    <h2 class="dataBox_theme">大数据求职系统后台</h2>   <!-- 超级会员标题 -->
    <h4 class="">超级管理员</h4>
    <div class="dataBox_nav">     <!-- 左边导航栏 -->
        <span class="dataBoxNav_theme dataBoxNavTheme_first">
             <i class="dataBoxNav_letter">添</i>
             <i class="dataBoxNav_letter">加</i>
             <i class="dataBoxNav_letter">求</i>
             <i class="dataBoxNav_letter">职</i>
             <i class="dataBoxNav_letter">资</i>
             <i class="dataBoxNav_letter">料</i>
          </span>
        <span class="dataBoxNav_theme">
             <i class="dataBoxNav_letter">用</i>
             <i class="dataBoxNav_letter">户</i>
             <i class="dataBoxNav_letter">信</i>
             <i class="dataBoxNav_letter">息</i>
          </span>
        <span class="dataBoxNav_theme">
             <i class="dataBoxNav_letter">管</i>
             <i class="dataBoxNav_letter">理</i>
             <i class="dataBoxNav_letter">员</i>
             <i class="dataBoxNav_letter">管</i>
             <i class="dataBoxNav_letter">理</i>
          </span>
        <span class="dataBoxNav_theme">
             <i class="dataBoxNav_letter">数</i>
             <i class="dataBoxNav_letter">据</i>
             <i class="dataBoxNav_letter">分</i>
             <i class="dataBoxNav_letter">析</i>
          </span>
        <span class="dataBoxNav_theme">
            <i class="dataBoxNav_letter">求</i>
            <i class="dataBoxNav_letter">职</i>
            <i class="dataBoxNav_letter">资</i>
            <i class="dataBoxNav_letter">料</i>
        </span>
    </div>
    <!-- 右边信息显示 -->
    <div class="dataBox_right">
        <!-- 表单控制 -->
        <form method="post" action="AddJob.action">
            <!-- 右边求职信息 -->
            <div class="dataBox_jobInformation dataBox_information">
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">公司</i>
                    <input type="text" name="jobInfo.Company" class="salary dataBoxInp_input">
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">招聘部门</i>
                    <input type="text" name="jobInfo.Department" class="salary dataBoxInp_input">
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">薪资区间</i>
                    <input type="text" name="jobInfo.Salary" class="salary dataBoxInp_input">
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">
                        工作类型：</i><select name="jobInfo.type">
                    <option value="" name="jobInfo.type">JAVA</option>
                    <option value="" name="jobInfo.type">PYTHON</option>
                    <option value="" name="jobInfo.type">JAVASCRIPT</option>
                    <option value="" name="jobInfo.type">大数据</option>
                    <option value="" name="jobInfo.type">人工智能</option>
                    <option value="" name="jobInfo.type">PHP</option>
                    <option value="" name="jobInfo.type">C</option>
                    <option value="" name="jobInfo.type">运维</option>
                    <option value="" name="jobInfo.type">区块链</option>
                    <option value="" name="jobInfo.type">SHELL</option>
                    <option value="" name="jobInfo.type">VB</option>
                    <option value="" name="jobInfo.type">RUBY</option>
                    <option value="" name="jobInfo.type">其他</option>
                </select>


                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">工作</i>
                    <input type="text" class="work dataBoxInp_input" name="jobInfo.Job">
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">福利</i>
                    <input type="text" class="experience dataBoxInp_input" name="jobInfo.Welfare">
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">学历要求</i>
                    <input type="text" class="education dataBoxInp_input" name="jobInfo.Academic">
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">职位描述</i>
                    <input type="text" class="describe dataBoxInp_input" name="jobInfo.Descrive">
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">工作地址</i>
                    <input type="text" class="address dataBoxInp_input" name="jobInfo.Address">
                </div>
                <input type="submit" value="提交" class="dataBoxInp_sub" onclick="javascript:form.submit();">
            </div>
        </form>
        <!-- 右边用户管理信息 -->
        <div class="dataBox_userInformation dataBox_information">
            <button type="button" id="shuaxin">点击</button>
            <table class="dataBoxUser_table">
                <tr class="dataBoxUser_title">
                    <th class="dataBoxUser_value"></th>
                    <th class="dataBoxUser_value"></th>
                    <th class="dataBoxUser_value"></th>
                    <th class="dataBoxUser_value"></th>
                    <th class="dataBoxUser_value"></th>
                </tr>
            </table>
        </div>
        <!-- 右边会员管理信息 -->
        <div class="dataBox_menberInformation dataBox_information">
            <%--添加普通管理员--%>
            <form action="addAdmin.action" method="post">
                <div class="dataBoxInp_ordinary">
                    <h2 class="dataBoxInp_theme">添加普通管理员</h2>
                    <div class="dataBoxInp_box">
                        <i class="dataBoxInp_text">账号</i>
                        <input type="text" class="describe dataBoxInp_input">
                    </div>
                    <div class="dataBoxInp_box">
                        <i class="dataBoxInp_text">密码</i>
                        <input type="text" class="address dataBoxInp_input">
                    </div>
                    <input type="submit" class="dataBoxInp_sub" value="添加会员">
            </form>
            <%--<input type="submit" class="dataBoxInp_sub" value="提交">--%>

        </div>
        <div class="dataBoxInp_super">
            <h2 class="dataBoxInp_theme">超级管理员</h2>
            <div class="dataBoxInp_box">
                <i class="dataBoxInp_text">账号</i>
                <input type="text" class="describe dataBoxInp_input" readonly="readonly" value="${currentAdmin.adminId}">
            </div>
            <div class="dataBoxInp_box">
                <i class="dataBoxInp_text">密码</i>
                <input type="text" class="address dataBoxInp_input" readonly="readonly"
                       value="${currentAdmin.adminPassword}">
            </div>
        </div>
    </div>
    <!-- 右边数据分析信息 -->
    <div class="dataBox_dataInformation dataBox_information"></div>

</div>

</div>
<script src="../jquery-3.3.1.min.js"></script>

<!-- 鼠标点击不同导航栏出现不同内容  鼠标点击用户弹出相应内容, 用户管理宽度, 超级会员居中, 右边信息定位, 左边导航栏字体变颜色, 点击删除键清空输入框 -->
<script type="text/javascript">
    $(document).ready(function () {
        var dataBoxNavTheme = $(".dataBoxNav_theme");
        var dataBoxInf = $(".dataBox_information");
        var dataBoxUserName = $(".dataBoxUser_name");
        var dataBoxUserBox = $(".dataBoxUser_box");
        var dataBoxNavLetter = $(".dataBoxNav_letter")

        function clearDis() {
            for (var i = 0; i < dataBoxNavTheme.length; i++) {
                dataBoxInf.eq(i).css("display", "none");
                dataBoxNavTheme.eq(i).children().css("color", "#fff")

            }
        }

        for (var i = 0; i < dataBoxNavTheme.length; i++) {
            (function (k) {
                dataBoxNavTheme.eq(k).bind({
                    click: function () {
                        clearDis();
                        dataBoxInf.eq(k).fadeIn('fast');
                        for (var j = 0; j < $(this).children().length; j++) {
                            $(this).children().eq(j).css("color", "#f40")
                        }
                    },
                    mouseenter: function () {
                        var distance = 20;
                        var themeTime = 0.5;
                        for (var j = 0; j < $(this).children().length; j++) {
                            $(this).children().eq(j).animate({
                                top: -distance + "px"
                            }, "1s")
                            $(this).children().eq(j).animate({
                                top: "0px"
                            }, "1s")
                            distance += -3;
                            $(this).children().eq(j).css({
                                "transition": "color " + themeTime + "s"

                            })
                            if (dataBoxInf.eq(k).css("display") == "none") {
                                $(this).children().eq(j).css({
                                    "color": "#f40"
                                })
                            }
                            themeTime += 0.5
                        }
                    },
                    mouseleave: function () {
                        for (var j = 0; j < $(this).children().length; j++) {
                            if (dataBoxInf.eq(k).css("display") == "none") {
                                $(this).children().eq(j).css({
                                    "color": "#fff"
                                });
                            }
                        }
                    }
                })
            }(i))
        }
        // 鼠标移动到用户时，出现阴影
        dataBoxUserName.bind({
            mouseenter: function () {
                $(this).css({
                    "box-shadow": "0 0 10px black"
                })
            },
            mouseleave: function () {
                $(this).css({
                    "box-shadow": "0 0 0 black"
                })
            }
        })
        // 鼠标点击用户弹出相应内容
        for (var i = 0; i < dataBoxUserName.length; i++) {
            (function (k) {
                dataBoxUserName.eq(k).click(function () {
                    dataBoxUserBox.eq(k).slideToggle("slow");
                    dataBoxUserName.css({
                        "width": dataBoxUserBox.css("width")
                    })
                })
            }(i))
        }

        // 超级会员居中
        var dataBoxTheme = $(".dataBox_theme");
        dataBoxTheme.css({
            "left": "50%",
            "margin-left": -parseInt(dataBoxTheme.css("width")) / 2 + "px"
        })
        // 右边信息定位
        var dataBox = $(".dataBox");
        var dataBoxRight = $(".dataBox_right");
        dataBoxRight.css({
            "right": parseInt(dataBox.css("margin-left")) + 130 + "px"
        })
        // 鼠标点击删除清空输入栏
        var dataDelete = $(".delete");
        for (var i = 0; i < dataDelete.length; i++) {
            dataDelete.eq(i).click(function () {
                $(this).prev().val("");
            })
        }

    })
</script>

<%--用户信息表格--%>
<script type="text/javascript">
    $(document).ready(function () {
        var tr = $(".dataBoxUser_title");
        var text = "<tr class='dataBoxUser_title'></tr>";
        var text1 = "<tb class='dataBoxUserVal_name'></tb>" +
            "<tb class='dataBoxUserVal_name'></tb>" +
            "<tb class='dataBoxUserVal_name'></tb>" +
            "<tb class='dataBoxUserVal_name'></tb>" +
            "<tb class='dataBoxUserVal_name'></tb>";
        $("#shuaxin").click(function () {
            $.ajax({
                type: 'post',
                url: 'showData',
                async: false,
                dataType: 'json',
                data: {},
                success: function (result) {

                    var length = 0;
                    for (var a in result) {
                        for (var b in result[a]) {
                            length++;
                        }
                    }
                    for (var i = 0; i < (length + 1); i++) {
                        for (var k in result) {
                            console.log(result[k][i]);
                        }
                    }
                    for (var i = 0; i < length; i++) {
                        tr.after(text);
                    }
                    tr.siblings().append(text1);
                    // opener.location.reload()
                },
                error: function () {
                    alert("加载数据失败");
                }
            });

        })
    });
    window.location.load();
</script>
</body>
</html>