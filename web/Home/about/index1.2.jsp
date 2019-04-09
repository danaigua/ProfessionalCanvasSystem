<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=1024" />
		<title>关于_基于大数据的智能求职系统</title>
		<meta name="keywords" content="这里填写关键词" />
		<meta name="description" content="这里填写描述" />
		<link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
		<!--[if lt IE 9]><script type="text/javascript" src="../js/html5.js"></script><![endif]-->
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
		<section id="single" class="singleImg">
			<!-- background:url(../images/我的资料2.jpg)
			background-size:100% 100%; -->
			<div class="cat_title">
				<div class="wrapper">
					<h2><strong>我的资料</strong></h2>
					    <!-- color:#fff -->
				</div>
			</div>
			<div class="category">
				<div class="wrapper">
					<!--  
						width: 986px;
						margin: 0 auto;
						position: relative;
					-->

					<!--  
						  margin: 0 auto;
						  *margin-top: 20px;
						  *margin-left: 5px
							
						  -->
					<div class="aboutMy">
						<fieldset>
							<legend class="myData_title">
                                 <!-- position:relative;
	                             left:30px; -->
								修改我的信息</legend>

								      <!-- 修改后的输入框内容及结构 -->
							<div class="myData_box">
								<label for="myData" class="myDataBox_name">昵称</label>
								<input type="text" id="myData" class="myDataBox_input" value="${currentUser.userName}" name="user.userName">
								<a href="javascript:" class="myDataBox_link">修改</a>
							</div>
							<div class="myData_box">
								<label for="myData" class="myDataBox_name">邮箱</label>
								<input type="text" id="myData" class="myDataBox_input" value="${currentUser.email}" name="user.email">
								<a href="javascript:" class="myDataBox_link">修改</a>
							</div>
							<div class="myData_box">
								<label for="myData" class="myDataBox_name">电话</label>
								<input type="text" id="myData" class="myDataBox_input" value="${currentUser.telephone}" name="user.telephone">
								<a href="javascript:" class="myDataBox_link">修改</a>
							</div>
							<div class="myData_box">
								<label for="myData" class="myDataBox_name">编号</label>
								<input type="text" id="myData" class="myDataBox_input" value="${currentUser.userId}" name="user.userId">
							</div>
							<!-- 昵称：<input type="text" size="29"><a href="">修改</a><br>
							E-mail: <input type="text" size="28"><a href="">修改</a><br>
							电话号码：<input type="text" size="25"><a href="">修改</a><br>
							我的编号：<input type="text" size="25"><br> -->
							<input type="button" value="注销"  class="myData_input">
							         <!-- margin-left: 30px;
	                                 width:150px;
	                                 height:40px;
	                                 line-height: 40px;
	                                 text-align:center;
	                                 border-radius: 40px;
	                                 border:2px solid #fff;
                                     background:#a11e21;
                                     color:#fff;
                                     cursor:pointer;
                                     font-weight:550;
                                     transition:all 0.3s;
                                     -webkit-transition:all .3s; -->
						</fieldset>
					</div>
				</div>
			</div>
			<article class="serv_detailed">
				<div class="aboutFont">
					<div id="detailed" class="datailedColor">
						<p class="t4">[专业+专注]</p>
						<div class="t4Content">
							<ul>
								<li>我们致力于为顾客提供通过大数据分析出就业的期望工作，以及期望工资</li>
								<li>我们专注于在大量数据种爬取出有用的数据进行分析</li>
							</ul>
						</div>
						<p class="t4">做大数据分析就业前景以及期望工资的网站并不多</p>
						<div class="t4Content">
							<ul>
								<li>我们通过python爬虫以及hadoop大数据框架在网上爬取大量的数据进行许多道清洗数据之后得到了比较可靠的期望值，然而这个值可能误差。但是我们会尽量地减少误差，让我们的网站变得更加的可靠</li>
								<li>网址：<a href="" target="_blank">http://www.xxxx.com/</a></li>
							</ul>
						</div>
					</div>
					
				</div>
			</article>
		</section>
		<footer>
			<div id="footerlink">
				<nav class="wrapper">
					<a href="../index.htm">首页</a>
					<a href="index.htm">关于</a>
				<a href=" ../service/index.htm">服务 </a> <a href="../case/index.htm">案例</a>
					<a href="../fangan/index.htm">方案</a>
					<a href="../contact/index.htm">联系</a>
					<a href="../news/index.htm">技巧</a>
					<a id="gotop" href="javascript:void(0)">top</a>
				</nav>
			</div>
			<div id="footerinfo">
				<div class="wrapper">
					<h2>联系我们<strong>Contact</strong></h2>
					<p>
						<a target="_blank" href="">
							<img border="0" src="../images/qq.png" alt="点击这里给我发消息" title="点击这里给我发消息" />
						</a><br />
						电话：400 8888 8888<br />
						传真：400 8888 8888<br />
						电子邮件：1295263075@qq.com.com<br />
						公司地址：广州市某某某某某某某某某<br />
						备案编号：粤xxxxxxxxxxx<br />
					</p>
					<img src="../images/map.gif" width="258" height="190" style="text-align: right; margin-left: 500px;" alt="公司位置" />
				</div>
			</div>
		</footer>
		<script type="text/javascript" src="../js/jquery.1.8.2.min.js"></script>
		<script type="text/javascript" src="../js/jquery.plugin.min.js"></script>
		<!--[if IE 6]>
<script type="text/javascript" src="../js/killie6.js"></script>
<![endif]-->
        <script type="text/javascript">
                            
               $(document).ready(function () {
               	    var myDataBoxInput = $(".myDataBox_input");
               	    var myDataBoxName = $(".myDataBox_name");
               	                   // 鼠标聚焦输入框border变蓝边
               	   
               	    for(var i = 0; i < myDataBoxInput.length; i ++) {
               	      var mouseTop = function (k) {
               	    	myDataBoxInput.eq(k).focus(function () {
                               $(this).css({
                               	   "box-shadow":"0 0 20px black",
                               	   "border-color":"#00f"
                               });
                               myDataBoxName.eq(k).animate({
                               	   "top":"-20px"
                               },"1s");
                               myDataBoxName.eq(k).animate({
                               	   "top":"0px"
                               },"1s");
               	    	})
               	    	myDataBoxInput.eq(k).blur(function() {
               	    		   $(this).css({
               	    		   	   "box-shadow":"0 0 0 balck",
               	    		   	   "border-color":"#fff"
               	    		   });

               	    	});
               	    }
               	    mouseTop(i);
               	   };
               	   
                                // 提交按钮鼠标移动红字红边
                    var myDataInput = $(".myData_input");
                    myDataInput.mouseenter(function () {
                    	    $(this).css({
                    	    	 "background":"none",
                    	    	 "border-color":"#a11e21",
                    	    	 "color":"#a11e21"
                    	    })
                    })
                    myDataInput.mouseleave(function () {
                    	    $(this).css({
                    	    	 "background":"#a11e21",
                    	    	 "color":"#fff",
                    	    	 "border-color":"#fff"

                    	    })
                    })
               })
        </script>
	</body>
</html>
