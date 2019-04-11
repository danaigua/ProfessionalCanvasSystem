<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>工作</title>
	<link rel="stylesheet" href="../css/style.css">
	<link rel="stylesheet" href="../css/gongzi1.css">
</head>
<body>
	<header>
			<div id="navbg"></div>
			<div class="wrapper">
				<h1 class="logo"><a href="../index.htm" title="大数据分析"><img src="../images/logo.png" width="213" height="36" alt="" /></a></h1>
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
		           <!-- 工资显示 -->
    <div class="wages_box">
    	<div class="wages">
    		<p class="wages_text estimate">${analyzeResult.errorInfo}</p>
			<p class="wages_text">您的理论工资为${analyzeResult.budgetSalary1}~${analyzeResult.budgetSalary2}</p>
    		<p class="wages_text">本地区平均工资${analyzeResult.addrAveSalary}</p>
    		<p class="wages_text">本行业平均工资${analyzeResult.industrySalary}</p>
    		<p class="wages_text">该行业的人才缺口${analyzeResult.talentGap}</p>
    	</div>
    	<div class="industry">
    		<div id="industry_box1" class="industry_box"></div>
    	</div>

    	<!-- 地区工作推荐 -->
        <div class="region1">
    	    <p class="region_text1">地区工作推荐</p>
    	    <div class="region_box1">
				<a class="company">
					<div class="company_box">
						<i class="companyBox_job">JAVA</i>
						<i class="companyBox_name">茂名有限责任公司</i>
					</div>
					<div class="companyEdu_box">
						学历 :<i class="company_education">本科</i>
					</div>
					<i class="company_address">广东省茂名市电白区水东镇</i>
					<div class="company_money">
						6000￥~10000￥
					</div>
				</a>
			</div>
        </div>

             <!-- 行业工作推荐 -->
        <div class="region2">
    	    <p class="region_text2">行业工作推荐</p>
    	    <div class="region_box2">
				<a class="company1">
					<div class="company_box1">
						<i class="companyBox_job1">JAVA</i>
						<i class="companyBox_name1">茂名有限责任公司</i>
					</div>
					<div class="companyEdu_box1">
						学历 :<i class="company_education1">本科</i>
					</div>
					<i class="company_address1">广东省茂名市电白区水东镇</i>
					<div class="company_money1">
						6000￥~10000￥
					</div>
				</a>
			</div>
        </div>
                  <!-- 免责声明 -->
        <hr class="exemtion_xian">
        <div class="exemption">
        	<p class="exemption_theme">免责声明</p>
        	<div class="exemtion_box">
        		<p class="exemtion_text">
                    1.对使用本站点信息和服务所引起的后果，本网站不作任何承诺，不声明也不保证其内容的有效性、正确性与可靠性，更不对您的投资构成建议，请自行辨别虚拟网络与真实世界的差别。</p>
        		<p class="exemtion_text">
        			2.对由于使用本网站所产生的任何直接、间接或偶然性的损失或破坏，我们不承担任何责任，无论该损失或破坏是否源于疏忽、违约、诽谤、侵权甚至电脑病毒。
        		</p>
        	</div>
        </div>
    </div>

               

		<footer>
			<div id="footerlink">
				<nav class="wrapper">
					<a href="../index.htm">首页</a>
					<a href="index.htm">分析</a>
					<a href="../case/index.htm">公司</a>
					<a href="../fangan/index.htm">校园</a>
					<a href="../contact/index.htm">联系</a>
					<a href="../news/index.htm">新闻</a>
					<a href="../about/index.htm">关于</a>
					<a id="gotop" href="javascript:void(0)">top</a>
				</nav>
			</div>
			<div id="footerinfo">
				<div class="wrapper">
					<h2>联系我们<strong>Contact</strong></h2>
					<p>
						<a target="_blank" href="javascript:if(confirm('http://wpa.qq.com/msgrd?v=3&uin=429592913&site=qq&menu=yes))window.location='http://wpa.qq.com/msgrd?v=3&uin=89091392&site=qq&menu=yes'"
						 tppabs="http://wpa.qq.com/msgrd?v=3&uin=429592913&site=qq&menu=yes"><img border="0" src="../images/qq.png" alt="点击这里给我发消息"
							 title="点击这里给我发消息" /></a><br />
						电话：400 8888 8888<br />
						传真：400 8888 8888<br />
						电子邮件：1295263075@qq.com<br />
						公司地址：广州市某某某某某某某某某<br />
						备案编号：粤xxxxxxxxxx1<br />
					</p>
					<img src="../images/map.gif" id="homemap" width="258" height="190" alt="公司位置" />
				</div>
			</div>
		</footer>
	<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts-all-3.js"></script>
	<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
	</script>
	  					<%--地区工作推荐阿贾克斯--%>
	<script type="text/javascript">
		$(document).ready(function() {
			window.onload = function () {
				//获取参数
				var strHref = document.location.toString();
				var intPos = strHref.indexOf("?");
				var strRight = strHref.substr(intPos + 1); //==========获取到右边的参数部分


				var count = 0;
				var length = 0;
				var company = $(".company");
				var companyLink = "<a href='javascript:' class='company'>" +
						"<div class=\"company_box\">\n" +
						"\t\t\t<i class=\"companyBox_job\"></i>\n" +
						"\t\t\t<i class=\"companyBox_name\"></i>\n" +
						"\t\t</div>\n" +
						"        <div class=\"companyEdu_box\">\n" +
						"        \t学历 :<i class=\"company_education\"></i>\n" +
						"        </div>\n" +
						"        <i class=\"company_address\"></i>\n" +
						"        <div class=\"company_money\">\n" +
						"        \t\n" +
						"        </div>" +
						"</a>";

				var url = 'searchJobByteAddr?' + strRight;
				var aa = 0;
				var sum = 0;
				if(count == 0) {
					$.ajax({
						type: 'post',
						url: url,
						dataType: 'json',
						async: true,
						data: {},
						success: function (result) {
							console.log(url);
							for (var a in result) {
								if (count==0) {
									for (var b in result[a]) {
										if(b != 0) {
											console.log(1);
											company.after(companyLink);
										}
										if (b==0){
											count++;
										}
									}
								}
							}
							;
							for (var a1 in result) {
								for (var b1 in result[a1]) {
									$(".company").eq(length).children().eq(0).children().eq(0).text(result[a1][b1].job);
									$(".company").eq(length).children().eq(0).children().eq(1).text(result[a1][b1].address);
									$(".company").eq(length).children().eq(1).children().text(result[a1][b1].academic);
									$(".company").eq(length).children().eq(2).text(result[a1][b1].company);
									$(".company").eq(length).children().eq(3).text(result[a1][b1].salary);
									// $(".company").eq(length).attr("href", $(".company").eq(length).attr("href") + "?id=" + result[a1][b1].id);
									$(".company").eq(length).attr("href","searchJobByteId?id=" + result[a1][b1].id);
									// $(".company").eq(length).attr("href",  "searchJobByteId?id=" + result[a1][b1].id);
									length++;
								}

							}

						},
						error: function () {
							alert("加载失败")
						}
					});
				}
			}
		})
	</script>
	               <%--行业工作推荐阿贾克斯--%>
	<script type="text/javascript">
		$(document).ready(function() {
			window.onload = function () {
				//获取参数
				var strHref = document.location.toString();
				var intPos = strHref.indexOf("?");
				var strRight = strHref.substr(intPos + 1); //==========获取到右边的参数部分


				var count = 0;
				var length = 0;
				var company1 = $(".company1");
				var companyLink1 = "<a href='javascript:' class='company1'>" +
						"<div class=\"company_box1\">\n" +
						"\t\t\t<i class=\"companyBox_job1\"></i>\n" +
						"\t\t\t<i class=\"companyBox_name1\"></i>\n" +
						"\t\t</div>\n" +
						"        <div class=\"companyEdu_box1\">\n" +
						"        \t学历 :<i class=\"company_education1\"></i>\n" +
						"        </div>\n" +
						"        <i class=\"company_address1\"></i>\n" +
						"        <div class=\"company_money1\">\n" +
						"        \t\n" +
						"        </div>" +
						"</a>";

				var url = 'searchJobBytetype?' + strRight;
				var aa = 0;
				var sum = 0;
				if(count == 0) {
					$.ajax({
						type: 'post',
						url: url,
						dataType: 'json',
						async: true,
						data: {},
						success: function (result) {
							console.log(url);
							for (var a in result) {
								if (count==0) {
									for (var b in result[a]) {
										if(b != 0) {
											console.log(1);
											company1.after(companyLink1);
										}
										if (b==0){
											count++;
										}
									}
								}
							}
							;
							for (var a1 in result) {
								for (var b1 in result[a1]) {
									$(".company1").eq(length).children().eq(0).children().eq(0).text(result[a1][b1].job);
									$(".company1").eq(length).children().eq(0).children().eq(1).text(result[a1][b1].address);
									$(".company1").eq(length).children().eq(1).children().text(result[a1][b1].academic);
									$(".company1").eq(length).children().eq(2).text(result[a1][b1].company);
									$(".company1").eq(length).children().eq(3).text(result[a1][b1].salary);
									// $(".company").eq(length).attr("href", $(".company").eq(length).attr("href") + "?id=" + result[a1][b1].id);
									$(".company1").eq(length).attr("href","searchJobByteId?id=" + result[a1][b1].id);
									// $(".company").eq(length).attr("href",  "searchJobByteId?id=" + result[a1][b1].id);
									length++;
								}

							}

						},
						error: function () {
							alert("加载失败")
						}
					});
				}
			}
		})
	</script>
	           <%--可视化分析结果--%>
	<script type="text/javascript">
	 var myChart = echarts.init(document.getElementById('industry_box1'));
	 option = {
		 title : {
			 text: '分析结果',
			 subtext: '过的痕迹',
			 x:'center'
		 },
		 tooltip : {
			 trigger: 'item',
			 formatter: "{a} <br/>{b} : {c} ({d}%)"
		 },
		 legend: {
			 orient : 'vertical',
			 x : 'left',
			 data:['理论工资','本地区平均工资','本行业平均工资','该行业的人才缺口']
		 },
		 toolbox: {
			 show : true,
			 feature : {
				 mark : {show: true},
				 dataView : {show: true, readOnly: false},
				 magicType : {
					 show: true,
					 type: ['pie', 'funnel'],
					 option: {
						 funnel: {
							 x: '25%',
							 width: '50%',
							 funnelAlign: 'left',
							 max: 1548
						 }
					 }
				 },
				 restore : {show: true},
				 saveAsImage : {show: true}
			 }
		 },
		 calculable : true,
		 series : [
			 {
				 name:'访问来源',
				 type:'pie',
				 radius : '55%',
				 center: ['50%', '60%'],
				 data:[
					 {value:335, name:'理论工资'},
					 {value:310, name:'本地区平均工资'},
					 {value:234, name:'本行业平均工资'},
					 {value:135, name:'该行业的人才缺口'}
				 ]
			 }
		 ]
	 };

	 myChart.setOption(option);
	</script>
</body>
</html>