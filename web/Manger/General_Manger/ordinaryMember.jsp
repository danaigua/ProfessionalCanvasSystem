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
                <input type="text" name="jobInfo.salary" class="salary dataBoxInp_input">
            </div>
            <div class="dataBoxInp_box">
                <i class="dataBoxInp_text">
                    工作类型：</i><select name="jobInfo.type">
                <option >JAVA</option>
                <option >PYTHON</option>
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
            <div class="dataBoxInp_box">
                <i class="dataBoxInp_text">工作</i>
                <input type="text" class="work dataBoxInp_input" name="jobInfo.Job">
            </div>
            <div class="dataBoxInp_box">
                <i class="dataBoxInp_text">工作时间</i>
                <input type="text" class="work dataBoxInp_input" name="jobInfo.workTime">
            </div>
            <div class="dataBoxInp_box">
                <i class="dataBoxInp_text">工作经验</i>
                <input type="text" class="work dataBoxInp_input" name="jobInfo.experience">
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
                <i class="dataBoxInp_text">岗位要求1</i>
                <input type="text" class="describe dataBoxInp_input" name="jobInfo.jobRequirements1">
            </div>
            <div class="dataBoxInp_box">
                <i class="dataBoxInp_text">岗位要求2</i>
                <input type="text" class="describe dataBoxInp_input" name="jobInfo.jobRequirements2">
            </div>
            <div class="dataBoxInp_box">
                <i class="dataBoxInp_text">岗位要求3</i>
                <input type="text" class="describe dataBoxInp_input" name="jobInfo.jobRequirements3">
            </div>
            <div class="dataBoxInp_box">
                <i class="dataBoxInp_text">岗位要求4</i>
                <input type="text" class="describe dataBoxInp_input" name="jobInfo.jobRequirements4">
            </div>
            <div class="dataBoxInp_box">
                <i class="dataBoxInp_text">岗位要求5</i>
                <input type="text" class="describe dataBoxInp_input" name="jobInfo.jobRequirements5">
            </div>
            <div class="dataBoxInp_box">
                <i class="dataBoxInp_text">晋升渠道1</i>
                <input type="text" class="describe dataBoxInp_input" name="jobInfo.channelPromotion1">
            </div>
            <div class="dataBoxInp_box">
                <i class="dataBoxInp_text">晋升渠道2</i>
                <input type="text" class="describe dataBoxInp_input" name="jobInfo.channelPromotion2">
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