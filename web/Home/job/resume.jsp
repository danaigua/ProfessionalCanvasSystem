<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>工作简历</title>
<link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="../css/resume.css"/>
</head>

<body>
<!--头部开始-->
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
<!--头部结束-->
<div class="resume_div">
  <h1 class="resume_theme">个人简历</h1>
 <form action="resumeCreate.action" class="resume_form" method="post" enctype="multipart/form-data">
    <table border="1" class="resume" cellspacing="0">
         <tr class="resume_tr">
              <td class="resume_data resume_cell" rowspan="4">个人资料</td>
              <td class="resume_name resume_cell">姓名</td>
              <td class="resume_cell">
                 <input type="text" name="resume.name" class="resume_input" />
              </td>
              <td class="resume_gender resume_cell">性别</td>
              <td class="resume_cell">
                 <input type="text" name="resume.sex" class="resume_input" />
              </td>
              <td class="resume_birth resume_cell">出生年月</td>
              <td class="resume_cell">
                 <input type="text" name="resume.resumeBirthday" class="resume_input" />
              </td>
         </tr>
         <tr class="resume_tr">
              <td class="resume_nation resume_cell">民族</td>
              <td class="resumeNat_input resume_cell">
                 <input type="text" name="resume.resumeNation" class="resume_input" />
              </td>
              <td class="resume_phone resume_cell">电话</td>
              <td class="resumePho_input resume_cell">
                 <input type="text" name="resume.telephone" class="resume_input" />
              </td>
              <td class="resume_education resume_cell">学历</td>
              <td class="resumeEdu_input resume_cell">
                 <input type="text" name="resume.degree" class="resume_input" />
              </td>
         </tr>
         <tr class="resume_tr">
              <td class="resume_position resume_cell">应聘职位</td>
              <td class="resumePos_input resume_cell" colspan="2">
                 <input type="text" name="resume.resumePositionApplied" class="resume_input" />
              </td>
              <td class="resume_address resume_cell">现所在地</td>
              <td class="resumeAdd_input resume_cell" colspan="2">
                 <input type="text" name="resume.addr" class="resume_input" />
              </td>
         </tr>
         <tr class="resume_tr">
              <td class="resume_school resume_cell">毕业院校</td>
              <td class="resumeSch_input resume_cell" colspan="2">
                 <input type="text" name="resume.almamater" class="resume_input" />
              </td>
              <td class="resume_mojor resume_cell">专业</td>
              <td class="resumeMoj_input resume_cell" colspan="2">
                 <input type="text" name="resume.major" class="resume_input" />
              </td>
         </tr>
         <tr class="resume_tr">
              <td class="resume_skill resume_cell">技能</td>
              <td class="resume_languages resume_cell">外语水平</td>
              <td class="resumeLan_input resume_cell" colspan="2">
                 <input type="text" name="resume.englishLevel" class="resume_input" />
              </td>
              <td class="resume_computer resume_cell">计算机水平</td>
              <td class="resumeCom_input resume_cell"colspan="2">
                 <input type="text" name="resume.computerLevel" class="resume_input" />
              </td>
         </tr>
         <tr class="resume_tr">
              <td class="resume_winning resume_cell">获奖情况</td>
              <td class="resumeCom_input resume_cell"colspan="6">
                  <textarea name="resume.awards" class="resume_input"></textarea>
              </td>
         </tr>
         <tr class="resume_tr">
              <td class="resume_wexperience resume_cell">工作经历</td>
              
              <td class="resumeCom_input resume_cell"colspan="6">
                  <textarea name="resume.workExperience" class="resume_input"></textarea>
              </td>
             <input type="hidden" value="${currentUser.userId}"  name="resume.userId" />
             <input type="hidden" value="${jobInfo.id}"  name="resume.jobId" />
         </tr>
    </table>
    <button type="submit" class="resume_submit" onclick="alert('提交简历成功，请保持电话通畅，HR会在后台审核简历，审核之后将会以短信的方式给您来电进行第一次面试');">提交</button>
     <p style="color: red; font-size: 20px;">${info}</p>
 </form>
</div>

<!--尾部开始-->
<footer>
    <div id="footerlink">
        <nav class="wrapper">
            <a href="index.htm" >首页</a>

            <a href="service/index.htm">分析</a>
            <a href="case/index.htm" >公司</a>
            <a href="fangan/index.htm">校园</a>
            <a href="contact/index.htm">联系</a>
            <a href="news/index.htm">新闻</a>
            <a href="about/index.htm">关于</a>
            <a id="gotop" href="javascript:void(0)">top</a>
        </nav>
    </div>
    <div id="footerinfo">
        <div class="wrapper">
            <h2>联系我们<strong>Contact</strong></h2>
            <p>
                <a target="_blank" href="javascript:if(confirm('http://wpa.qq.com/msgrd?v=3&uin=429592913&site=qq&menu=yes'))window.location='http://wpa.qq.com/msgrd?v=3&uin=429592913&site=qq&menu=yes'"><img border="0" src="../images/qq.png"  alt="点击这里给我发消息" title="点击这里给我发消息"/></a><br/>
                电话：400 8888 8888<br/>
                传真：400 8888 8888<br/>
                电子邮件：1295263075@qq.com.com<br/>
                公司地址：广州市某某某某某某某某某<br/>
                备案编号：粤xxxxxxxxxxx<br/>
            </p>
            <img src="../images/map.gif" id="homemap" width="258" height="190" alt="公司位置" />
        </div>
        <div class="links">
            <h2>友情链接<strong>Links</strong></h2>
            <p>
            <ul>
                <li>
                    <a href="#" target='_blank'></a>
                </li>
                <li>
                    <a href="#" target='_blank'></a>
                </li>
                <li>
                    <a href="#" target='_blank'></a>
                </li>
                <li>
                    <a href="#" target='_blank'></a>
                </li>
            </ul>
            </p>
        </div>
    </div>
</footer>
<!--尾部结束-->
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
</body>
</html>