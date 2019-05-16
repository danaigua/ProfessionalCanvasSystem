<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="viewport" content="width=1024" />
		<title>个人资料</title>
		<meta name="keywords" content="这里填写关键词" />
		<meta name="description" content="这里填写描述" />
		<link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
		<link rel="stylesheet" href="../css/user.css" type="text/css" />
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
				<div class="linckBox" style="background:rgb(101,108,125);">
					<i class="linkImg ziliao"></i>
					<a href="${pageContext.request.contextPath}/Home/about/index1.2.jsp" class="data navLink" style="color:rgb(181,185,194);background:rgb(101,108,125);">个人资料</a>
				</div>
				<div class="linckBox">
					<i class="linkImg fankui"></i>
					<a href="${pageContext.request.contextPath}/Home/about/feedback.jsp" class="feedback navLink">用户反馈</a>
				</div>
				<div class="linckBox">
					<i class="linkImg jianli"></i>
					<a href="javascript:" class="resume navLink">个人简历</a>
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
			</div>
		</nav>

	<section class="userdata">
		
							<!-- 基本信息 -->
			<div class="basicBox">
			<span class="basic_edit">编辑</span>
			<div class="basic_bigbox">              <!-- 预览的框 -->
			   
			  <div class="basic_big">
				
				<h1 class="basic_theme">基本信息</h1>
				<div class="basicInsi_box">
					<div class="basicInsiImg_box" title="点击上传图片">
						<img src="${pageContext.request.contextPath}/userImage/${currentUser.userPicimg}" alt="" class="basicInsi_img">
					</div>
					<h2 class="basic_name">${currentUser.userName}</h2>
					<p class="basic_infor">
						<span class="basicInfor_text basicInfor_xing">${currentUser.userSex}</span>
						<i class="basicInfor_text">|</i>
						<span class="basicInfor_text basicInfor_xue">${currentUser.userEducationBackground}</span>
						<i class="basicInfor_text">|</i>
						<span class="basicInfor_text basicInfor_nian">${currentUser.userAge}</span>
					</p>
					<p class="basic_infor">
						<i class="phone_img"></i>
						电话:<span class="basic_phone basicMar">${currentUser.telephone}</span>
						<i class="email_img"></i>
						邮箱:<span class="basic_email basicMar">${currentUser.email}</span>
					</p>
					<p class="basic_infor">
						<i class="address_img"></i>
						现居住地址:<span class="basic_address basicMar">${currentUser.userAddress}</span>
						<i class="experience_img"></i>
						工作经历:<span class="basic_experience basicMar">${currentUser.workExperience}</span>
						<span class="" style="color: red">${message.info}</span>
					</p>
				</div>
				</div>
				</div>
				
				
				<!-- 隐藏的表单 -->
					<div class="basic_form">
							<form action="saveUserInfoInUserCenter" method="post" enctype="multipart/form-data">
								<div class="basicForm_box">
									<label for="city" class="basic_label">姓名</label>
									<i class="basicForm_xiao"></i>
									<input type="text" id="city" class="basic_input basicInp_mar" name = "user.userName" value="${currentUser.userName}" />
									<label class="basic_label xingbie">性别</label>
									<span class="basic_man xingbieNN"><i class="man_img"></i>男</span>
									<span class="basic_girl xingbieNN"><i class="girl_img"></i>女</span>
									<input type="hidden" value="${currentUser.userSex}" class="basic_input" name="user.userSex" />
								</div>
								<div class="basicForm_box">
									<label for="city_number" class="basic_label">学历</label>
									<i class="basicForm_xiao"></i>
									<input type="tel" id="city_number"  class="basic_input basicInp_mar" list="education_basic" name="user.userEducationBackground" value="${currentUser.userEducationBackground}" />
									<datalist id="education_basic">
										<option value="高中" ${currentUser.userEducationBackground=="高中"?'selected':''}></option>
										<option value="中专" ${currentUser.userEducationBackground=="中专"?'selected':''}></option>
										<option value="大专" ${currentUser.userEducationBackground=="大专"?'selected':''}></option>
										<option value="本科" ${currentUser.userEducationBackground=="本科"?'selected':''}></option>
										<option value="硕士" ${currentUser.userEducationBackground=="硕士"?'selected':''}></option>
									</datalist>
									
									<label for="city_email" class="basic_label">年龄</label>
									<i class="basicForm_xiao"></i>
									<input type="text" id="city_email"  class="basic_input" name="user.userAge" value="${currentUser.userAge}" />
								</div>
								<div class="basicForm_box">
									<label for="city_credit" class="basic_label">电话</label>
									<i class="basicForm_xiao"></i>
									<input type="text" id="city_credit"  class="basic_input basicInp_mar" name="user.telephone" value="${currentUser.telephone}" />
									<label for="city_number" class="basic_label">现居住地址</label>
									<i class="basicForm_xiao"></i>
									<input type="tel" id="city_number"  class="basic_input" name="user.userAddress" value="${currentUser.userAddress}" />
								</div>
								<div class="basicForm_box">
									<label for="city_email" class="basic_label" >电子邮箱</label>
									<i class="basicForm_xiao"></i>
									<input type="email" id="city_email"  class="basic_input basicInp_mar" name="user.email" value="${currentUser.email}" />
									<label for="city_credit" class="basic_label">工作经验</label>
									<i class="basicForm_xiao"></i>
									<input type="text" id="city_credit"  class="basic_input" name="user.workExperience" value="${currentUser.workExperience}" />
								</div>
								<div class="basicForm_box">
									<label for="city_email" class="basic_label">上传头像</label>
									<i class="basicForm_xiao"></i>
									<input type="file" name="userPic" id="userPic" />
									<input type="hidden" id="userId" name="userId" value="${currentUser.userId}"/>
								</div>
								<div class="baocun_box">
								<input type="submit" value="保存" class="preservation" onclick="alertInfo()" 	/>
								<input type="button" value="取消" class="cancel" />
								</div>
							</form>
					</div>
				
				</div>
				
								<!-- 求职意愿 -->
			<div class="desire_bigbox">
				<span class="basic_edit">编辑</span>
				<div class="desire">
					
					<h1 class="desire_theme">求职意愿</h1>
					<p class="desire_box">
						期望薪资 : <span class="desice_money desireMar">${userAspriation.userExpectSalary}</span>
						期望工作地点 : <span class="desice_address desireMar">${userAspriation.userExpectAddress}</span>
					</p>
					<p class="desire_box">
						期望从事职位 : <span class="desire_position desireMar">${userAspriation.userExpectJob}</span>
						期望工作性质 : <span class="desire_nature desireMar">${userAspriation.userExceptJobType}</span>
					</p>
					<p class="desire_box">
						自我评价 : <span class="desire_evaluate desireMar">${userAspriation.userAssess}</span>
					</p>
					<p class="desire_box">
						求职状态 : <span class="desire_state desireMar">${userAspriation.userType}</span>
					</p>
				</div>
				<div class="desire_form">    		<!--求职意愿隐藏-->
					<form action="updateUserAspriationInUserCenter" enctype="multipart/form-data" method="post">
						<div class="basicForm_box">
							<label for="city_credit" class="desire_label">期望薪资</label>
							<i class="basicForm_xiao"></i>
							<input type="text" id="city_credit" name="userAspriation.userExpectSalary" value="${userAspriation.userExpectSalary}"  class="desire_input basicInp_mar">
							<label for="city_number" class="desire_label">期望工作地点</label>
							<i class="basicForm_xiao"></i>
							<input type="tel" id="city_number" name="userAspriation.userExpectAddress" value="${userAspriation.userExpectAddress}" class="desire_input">
						</div>
						<div class="basicForm_box">
							<label for="city_credit" class="desire_label">期望从事职位</label>
							<i class="basicForm_xiao"></i>
							<input type="text" id="city_credit"  name="userAspriation.userExpectJob" value="${userAspriation.userExpectJob}"  class="desire_input basicInp_mar" list="congshi">
							<datalist id="congshi">
								<option value="硬件工程师"></option>
								<option value="网络应用工程师"></option>
								<option value="前端开发"></option>
								<option value="后端开发"></option>
								<option value="运维工程师"></option>
							</datalist>
							<label for="city_number" class="desire_label">期望工作性质</label>
							<i class="basicForm_xiao"></i>
							<input type="tel" id="city_number"  name="userAspriation.userExceptJobType" value="${userAspriation.userExceptJobType}"  class="desire_input">
						</div>
						<div class="basicForm_box">
						  <div class="desire_littlebox">
							<label for="city_credit" class="desire_label">求职状态</label>
							<i class="basicForm_xiao"></i>
							<input type="text" id="city_credit"  name="userAspriation.userType" value="${userAspriation.userType}"  class="desire_input basicInp_mar" list="zhuangtai">
							<datalist id="zhuangtai">
								<option value="就职"></option>
								<option value="离职"></option>
							</datalist>
						   </div>
						   <div class="desire_littlebox">
							<label for="city_number" class="desire_label">自我评价</label>
							<i class="basicForm_xiao"></i>
						    </div>
							<textarea type="tel" id="city_number"  name="userAspriation.userAssess" value="${userAspriation.userAssess}"   class="desire_input desire_duohang"></textarea>
						</div>
						<div class="baocun_box">
							<input type="hidden" value="${userAspriation.userAspriationId}" name="userAspriation.userAspriationId">
							<input type="hidden" value="${userAspriation.userId}" name="userAspriation.userId">
							<input type="submit" value="保存" class="preservation">
							<input type="button" value="取消" class="cancel">
						</div>
					</form>
				</div>
			</div>
			</div>
		</section>
			
		<script type="text/javascript" src="../js/jquery.1.8.2.min.js"></script>
		<script type="text/javascript" src="../js/jquery.plugin.min.js"></script>
		<!--[if IE 6]>
<script type="text/javascript" src="../js/killie6.js"></script>
<![endif]-->
		<%--<script type="text/javascript">--%>
			<%--function alertInfo() {--%>
				<%--alert("修改成功，下次登陆的时候生效");--%>
			<%--}--%>
		<%--</script>--%>
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
													
										
					
											// 点击编辑的时候出现输入框,且有边框;
					var basicEdit = $(".basic_edit");
					var basicBox = $(".basicBox");
					var basicBigbox = $(".basic_bigbox");
					var cancel = $(".cancel");
					var basicForm = $(".basic_form");
					var desireForm = $(".desire_form");
					var desireBigbox = $(".desire_bigbox");
					var desire = $(".desire")
								// 点击编辑后输入框出现信息
					var basicName = $(".basic_name");
					var basicInforXing = $(".basicInfor_xing");
					var basicInforXue = $(".basicInfor_xue");
					var basicInforNian = $(".basicInfor_nian")
					var basicPhone = $(".basic_phone");
					var basicEmail = $(".basic_email");
					var basicAddress = $(".basic_address");
					var basicExperience = $(".basic_experience");
					var basicInput = $(".basic_input");
					var desireInput = $(".desire_input");
												// 求职意向
					var desiceMoney = $(".desice_money");
					var desiceAddress = $(".desice_address");
					var desirePosition = $(".desire_position");
					var desireNature = $(".desire_nature");
					var desireEvaluate = $(".desire_evaluate");
					var desireState = $(".desire_state");
					var preservation = $(".preservation")
					for(var i = 0; i < basicEdit.length; i ++) {
						basicEdit.eq(i).click(function () {
							       // 大框有边框
							$(this).parent().css({
								"border":"2px solid rgb(42,45,52)"
							});
										// 预览信息隐藏
							$(this).parent().children().eq(1).css({
								"display":"none"
							})
										// 修改表显示
							$(this).parent().children().eq(2).css({
								"display":"block"
							})
										// 编辑隐藏
							$(this).css({
								"display":"none"
							})
						})
						};
				   var basicInforXing = $("basicInfor_xing");
				   var basicMan = $(".basic_man");
				   var basicGirl = $(".basic_girl")
				   basicEdit.eq(0).click(function () {
						if(basicInforXing.text() == basicMan.text()) {
							basicMan.addClass("basic_taobao");
						}else{
							basicGirl.addClass("basic_taobao");
						}
				   })
					
					            // 编辑的性别/
					var xingbie = $(".xingbieNN");
					function clearBasic() {
						for(var i = 0; i < xingbie.length; i ++) {
							
							xingbie.eq(i).removeClass("basic_taobao")
						}
					}
					for(var i = 0; i < xingbie.length; i ++) {
						xingbie.eq(i).click(function () {
							clearBasic();
							$(this).addClass("basic_taobao");
							basicInput.eq(1).val($(this).text())
						})
					}
					
					
					// 鼠标移动到模块出现编辑;
					
					$(".basicBox, .desire_bigbox").mouseenter(function () {
						if($(this).children().eq(1).css("display") == "block"){
							$(this).children(".basic_edit").css("display","block")
						}
					})
					$(".basicBox, .desire_bigbox").mouseleave(function () {
						
							$(this).children(".basic_edit").css("display","none")
					})
					
					// 按下取消后恢复原来(基础信息)
					cancel.eq(0).click(function () {
						// 预览信息显示
						basicBox.children().eq(1).css({
							"display":"block"
						})
									// 修改表隐藏
						basicBox.children().eq(2).css({
							"display":"none"
						})
						// 大框没边框
						basicBox.css({
							"border":"transparent"
						});
					})
					
					
					// 按下取消后恢复原来(求职意向)
					cancel.eq(1).click(function () {
						// 预览信息显示
						desireBigbox.children().eq(1).css({
							"display":"block"
						})
									// 修改表隐藏
						desireBigbox.children().eq(2).css({
							"display":"none"
						})
						// 大框没边框
						desireBigbox.css({
							"border":"transparent"
						});
					})
					
						
               })
        </script>
	</body>
</html>
