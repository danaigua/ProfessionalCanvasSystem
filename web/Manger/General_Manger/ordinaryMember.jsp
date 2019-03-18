<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>大数据后台管理系统</title>
    <link rel="stylesheet" href="ordinaryMember.css">
</head>
<body>

<div class="dataBox">    <!-- 外部大盒子 -->
    <h2 class="dataBox_theme">大数据求职系统后台</h2>   <!-- 普通会员标题 -->
    <h4 class="">普通管理员</h4>
    <div class="dataBox_nav">     <!-- 左边导航栏 -->
        <i class="dataBoxNav_theme">求职资料</i>
    </div>
    <form method="post" action="AddJobOri.action">
        <div class="dataBox_information">     <!-- 右边基本信息 -->
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
</div>
<script src="../jquery-3.3.1.min.js"></script>

<!-- 超级会员居中 -->
<script type="text/javascript">
    $(document).ready(function () {
        var dataBoxTheme = $(".dataBox_theme");
        dataBoxTheme.css({
            "left": "50%",
            "margin-left": -parseInt(dataBoxTheme.css("width")) / 2 + "px"
        });
        // 鼠标点击删除清空输入栏
        var dataDelete = $(".delete");
        for (var i = 0; i < dataDelete.length; i++) {
            dataDelete.eq(i).click(function () {
                $(this).prev().val("");
            })
        }
        // 右边信息定位
        // var dataBox = $(".dataBox");
        // var dataBoxRight = $(".dataBox_information");
        // dataBoxRight.css({
        //     "right":parseInt(dataBox.css("margin-left")) + "px"
        // })
    })

</script>
</body>
</html>