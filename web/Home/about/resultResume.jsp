<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=1024" />
		<title>个人简历</title>
		<meta name="keywords" content="这里填写关键词" />
		<meta name="description" content="这里填写描述" />
		<link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
		<link rel="stylesheet" href="../css/user1.css" type="text/css" />
		<link rel="stylesheet" href="../css/resume1.css">
		<script type="text/javascript" src="../js/html5.js"></script>
	</head>
	<body>



		<header>
			<div id="navbg"></div>
			<div class="wrapper">
				<h1 class="logo"><a href="../index.htm" title=""><img src="../images/logo.png" width="213" height="36" alt="" /></a></h1>
				<nav>
					<ul>
						<li class="home"><a href="../index.htm">首页<span>网站首页！</span></a></li>
						<li class="service"><a href="AnalyzeJurisdiction.action" title="网站建设">分析<span>大数据分析</span></a></li>
						<li class="cases"><a href="../case/index.htm" title="网页制作">公司<span>社会招聘</span></a></li>
						<li class="client"><a href="../fangan/index.htm" title="解决方案">学校<span>校园招聘</span></a></li>
						<li class="about"><a href="AboutLogin.action">我的<span>登陆注册</span></a></li>
					</ul>
				</nav>
			</div>
		</header>
		<nav class="nav">
			<div class="navBox">
				<div class="img"></div>
				<div class="linckBox">
					<i class="linkImg ziliao"></i>
					<a href="${pageContext.request.contextPath}/Home/about/index1.2.jsp" class="data navLink" >个人资料</a>
				</div>
				<div class="linckBox" >
					<i class="linkImg fankui"></i>
					<a href="${pageContext.request.contextPath}/Home/about/feedback.jsp" class="feedback navLink" >用户反馈</a>
				</div>
				<div class="linckBox" style="background:rgb(101,108,125);">
					<i class="linkImg jianli"></i>
					<a href="javascript:" class="resume navLink" style="color:rgb(181,185,194);background:rgb(101,108,125);">个人简历</a>
					<i class="xiala"></i>
				</div>
				<div class="sonLinckBox">
					<a href="${pageContext.request.contextPath}/Home/about/resume.jsp" class="navLinkSon sonOne">个人简历</a>
					<a href="${pageContext.request.contextPath}/Home/about/resume1.jsp" class="navLinkSon sonTwo)">已发布简历</a>
				</div>
				<div class="linckBox">
					<i class="linkImg gongsi"></i>
					<a href="${pageContext.request.contextPath}/Home/about/company.jsp" class="entrance navLink">公司入口</a>
				</div>
				<div class="linckBox">
					<i class="linkImg lauout"></i>
					<a href="${pageContext.request.contextPath}/userLogOut" class="entrance navLink">退出登陆</a>
				</div>
			</div>
		</nav>

												<!-- 个人简历 -->
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
		<script src="../js/My97DatePicker/WdatePicker.js"></script>
		<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
						<!-- 简历判定空 -->
		<script type="text/javascript">
		     $(document).ready(function () {
		          var resumeInput = $(".resume_input");
		        for(var i = 0; i < resumeInput.length; i ++) {
		               var judge = function (k) {
		                   resumeInput.eq(k).bind({
		                       blur:function () {
		                             if($(this).val() == "") {
		                                 $(this).css({
		                                    "color":"#f00"
		                                 });
		                                 $(this).val("输入不能为空!");
		                             }  
		                       },
		                       focus:function () {
		                             if($(this).val() == "输入不能为空!") {
		                                 $(this).css({
		                                     "color":"#000"
		                                 });
		                                 $(this).val("")
		                              }
		                        }
		                   })
		          }
		          judge(i)
		        }
		                     // 点击提交弹出提交成功
		          
		         $(".resume_submit").click(function () {
		            var aa = true;
		            for(var i = 0; i < resumeInput.length; i ++) {
		             if(resumeInput.eq(i).val() == "输入不能为空!" || resumeInput.eq(i).val() == "") {
		                alert("提交失败,输入不能为空");
		                aa = false;
		                break;
		             }
		            }
		            if(aa){
		                alert("提交成功!下次登陆生效");
		             }
		         })
		                    
		        
		         
		     })
		</script>
			
		<script type="text/javascript" src="jquery.1.8.2.min.js"></script>
		<script type="text/javascript" src="jquery.plugin.min.js"></script>
		<!--[if IE 6]>
<script type="text/javascript" src="../js/killie6.js"></script>
<![endif]-->
					<!-- 导航栏交互 -->
        <script type="text/javascript">
                            
               $(document).ready(function () {
               	     var linckBox = $(".linckBox");
               	    var navLink = $(".navLink");
               	    		
               	    				// 鼠标移动到导航栏出现聚焦样式开始
               	    for(var i = 0; i < linckBox.length; i ++) {
               	    	(function (k) {
               	    		linckBox.eq(k).mouseenter(function () {
               	    			if($(this).css("background") != "rgb(101,108,125)") {
               	    				navLink.eq(k).addClass("linckFirst")
               	    			}
               	    		});
               	    		linckBox.eq(k).mouseleave(function () {
               	    				navLink.eq(k).removeClass("linckFirst")
               	    		});
               	    	}(i))
               	    }
               	    					// 鼠标移动到导航栏出现聚焦样式结束
										// 个人简历点击下拉开始
					$(".linckBox").eq(2).click(function () {
						$(".sonLinckBox").slideToggle("slow")
					})
										// 个人简历点击下拉结束
               })
        </script>
	</body>
</html>

