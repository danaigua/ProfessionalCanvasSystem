<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=1024" />
		<title>${jobInfo.company}招聘</title>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
		<!--[if lt IE 9]><script type="text/javascript" src="../js/html5.js" ></script><![endif]-->
	</head>
	<body>



		<header>
			<div id="navbg"></div>
			<div class="wrapper">
				<h1 class="logo"><a href="../index.htm" title=""><img src="../images/logo.png" width="213" height="36" alt="" /></a></h1>
				<nav>
					<ul>
						<li class="home"><a href="../index.htm">首页<span>网站首页！</span></a></li>
						<li class="service"><a href="AnalyzeJurisdiction.action" title="大数据分析">分析<span>大数据分析</span></a></li>
						<li class="cases"><a href="../case/index.htm" title="社会招聘">公司<span>社会招聘</span></a></li>
						<li class="client"><a href="../fangan/index.htm" title="校园招聘">学校<span>校园招聘</span></a></li>
						<li class="about"><a href="AboutLogin.action">我的<span>登陆注册</span></a></li>
					</ul>
				</nav>
			</div>
		</header>

		<section id="newslist">
			<div class="cat_title">
				<div class="wrapper">
					<h2>${jobInfo.company}招聘</h2>
					<p>${jobInfo.job}【${jobInfo.company}直聘】<br />${jobInfo.company}招聘</p>
				</div>
			</div>
			<!--  
				.wrapper {
					width: 986px;
					margin: 0 auto;
					position: relative;
				}
				-->
				<!--    -->
				<!--    -->
				<!--    -->
				<!--    -->
				<!--    -->
			<ul class="news wrapper">
				<li>
					<div class="job">
						<a href="../job/resume.jsp" class="job_link">填写个人简历</a>
						<h4>薪资区间：${jobInfo.salary}</h4>
						<h4>地点：${jobInfo.address} </h4>
						<h4>工作经验：${jobInfo.experience}</h4>
						<h4>学历要求：${jobInfo.academic}</h4>
						<h4>职位诱惑：</h4>
						<p>${jobInfo.welfare}</p>
						<h4>职位描述：</h4>
						<p>${jobInfo.descrive}</p>
						<h5>任职要求：</h5>
						<p>${jobInfo.jobRequirements1}</p>
						<p>${jobInfo.jobRequirements2}</p>
						<p>${jobInfo.jobRequirements3}</p>
						<p>${jobInfo.jobRequirements4}</p>
						<p>${jobInfo.jobRequirements5}</p>
						<h4>工作时间：</h4>
						${jobInfo.workTime}
						<h5>晋升渠道：</h5>
						<p>${jobInfo.channelPromotion1}</p>
						<p>${jobInfo.channelPromotion1}</p>
						<h4>工作地址</h4>
						${jobInfo.address}
					</div>
				</li>
			</ul>
			<div class="dede_pages">
				<ul class="pagelist">
					<li><span class="pageinfo">共 <strong>1</strong>页<strong>1</strong>条记录</span></li>
				</ul>
			</div><!-- /pages -->
		</section>
		<footer>
			<div id="footerlink">
				<nav class="wrapper">
					<a href="../index.htm">首页</a>

					<a href="../service/index.htm">分析</a>
					<a href="../case/index.htm">公司</a>
					<a href="../fangan/index.htm">校园</a>
					<a href="../contact/index.htm">联系</a>
					<a href="../news/index.htm">技巧</a>
					<a href="../about/index.htm">关于</a>
					<a id="gotop" href="javascript:void(0)">top</a>
				</nav>
			</div>
			<div id="footerinfo">
				<div class="wrapper">
					<h2>联系我们<strong>Contact</strong></h2>
					<p>
						<a target="_blank" href="javascript:if(confirm('http://wpa.qq.com/msgrd?v=3&uin=89091392&site=qq&menu=yes  点击这里给我发送临时消息'))window.location='http://wpa.qq.com/msgrd?v=3&uin=89091392&site=qq&menu=yes'"><img
							 border="0" src="../images/qq.png" alt="点击这里给我发消息" title="点击这里给我发消息" /></a><br />
						电话：400 8888 8888<br />
						传真：400 8888 8888<br />
						电子邮件：1295263075@qq.com<br />
						公司地址：广州市某某某某某某某某某<br />
						备案编号：粤xxxxxxxxx1<br />
						
					</p>
					<img src="../images/map.gif" id="homemap" width="258" height="190" alt="公司位置" />
				</div>
			</div>
		</footer>
		<script type="text/javascript" src="../js/jquery.1.8.2.min.js"></script>
		<script type="text/javascript" src="../js/jquery.plugin.min.js"></script>
		<!--[if IE 6]>
<script type="text/javascript" src="../js/killie6.js" ></script>
<![endif]-->

		<script type="text/javascript">
			//<![CDATA[
			//Nav Start
			$("header>div>nav>ul>li>a").hover(function() {
				$(this).parent().stop(false, true).animate({
					"background-position-x": "6px",
					opacity: "0.7"
				}, {
					duration: "normal",
					easing: "easeOutElastic"
				});
			}, function() {
				$(this).parent().stop(false, true).animate({
					"background-position-x": "10px",
					opacity: "1"
				}, {
					duration: "normal",
					easing: "easeOutElastic"
				});
			});
			<!----新闻---->
			<!---- 新闻首页 ----->
			//Nav End
			$("#gotop").click(function() {
				$('body,html').animate({
					scrollTop: 0
				}, 500);
			})
			var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
			document.write(unescape("%3Cscript src='" + _bdhmProtocol +
				"hm.baidu.com/h.js%3F3fe5b2b119b5fc4931e9c73e7071b0c6' type='text/javascript'%3E%3C/script%3E"));
			var bds_config = {
				"bdTop": 203
			};
			$("#bdshell_js").attr("src", "http://share.baidu.com/static/js/shell_v2.js?cdnversion=" + new Date().getHours());
			//]]>
		</script>
	</body>
</html>
