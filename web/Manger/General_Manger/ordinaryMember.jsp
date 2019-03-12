<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="ordinaryMember.css">
</head>
<body>

	<div class="dataBox">    <!-- 外部大盒子 -->
		<h2 class="dataBox_theme">普通会员</h2>   <!-- 普通会员标题 -->
		<div class="dataBox_nav">     <!-- 左边导航栏 -->
             <i class="dataBoxNav_theme">求职资料</i>
	  </div> 
		<div class="dataBox_information">     <!-- 右边基本信息 -->
              <div class="dataBoxInp_box">
              	   <i class="dataBoxInp_text">薪资区间</i>
              	   <input type="text" class="salary dataBoxInp_input">
              	   <a href="" class="delete">删除</a>
              	   <a href="javascript:" class="modify">修改</a>
              </div>
              <div class="dataBoxInp_box">
              	   <i class="dataBoxInp_text">工作</i>
              	   <input type="text" class="work dataBoxInp_input">
              	   <a href="javascript:" class="delete">删除</a>
              	   <a href="javascript:" class="modify">修改</a>
              </div>
              <div class="dataBoxInp_box">
              	   <i class="dataBoxInp_text">工作经历</i>
              	   <input type="text" class="experience dataBoxInp_input">
              	   <a href="javascript:" class="delete">删除</a>
              	   <a href="javascript:" class="modify">修改</a>
              </div>
              <div class="dataBoxInp_box">
              	   <i class="dataBoxInp_text">学历要求</i>
              	   <input type="text" class="education dataBoxInp_input">
              	   <a href="javascript:" class="delete">删除</a>
              	   <a href="javascript:" class="modify">修改</a>
              </div>
              <div class="dataBoxInp_box">
              	   <i class="dataBoxInp_text">职位描述</i>
              	   <input type="text" class="describe dataBoxInp_input">
              	   <a href="javascript:" class="delete">删除</a>
              	   <a href="javascript:" class="modify">修改</a>
              </div>
              <div class="dataBoxInp_box">
              	   <i class="dataBoxInp_text">工作地址</i>
              	   <input type="text" class="address dataBoxInp_input">
              	   <a href="javascript:" class="delete">删除</a>
              	   <a href="javascript:" class="modify">修改</a>
              </div>
              <input type="submit" value="提交" class="dataBoxInp_sub">
		</div> 
	</div>
  <script src="../jquery-3.3.1.min.js"></script>

                   <!-- 超级会员居中 -->
    <script type="text/javascript">
        $(document).ready(function () {         
             var dataBoxTheme = $(".dataBox_theme");
             dataBoxTheme.css({
                 "left":"50%",
                  "margin-left":-parseInt(dataBoxTheme.css("width")) / 2 + "px"
             });
             // 鼠标点击删除清空输入栏
            var dataDelete = $(".delete");
            for(var i = 0; i < dataDelete.length; i ++) {
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