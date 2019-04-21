<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>大数据后台管理系统</title>
    <link rel="stylesheet" href="superMenber.css">
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts-all-3.js"></script>
</head>
<body>
<div class="dataBox">    <!-- 外部大盒子 -->
    <h2 class="dataBox_theme">大数据求职系统后台</h2>   <!-- 超级会员标题 -->
    <h4 class="dataBox_little">超级管理员</h4>
    <div class="dataBox_nav">     <!-- 左边导航栏 -->
        <span class="dataBoxNav_theme">
             <i class="dataBoxNav_letter dataBoxNavTheme_first">添</i>
             <i class="dataBoxNav_letter dataBoxNavTheme_first">加</i>
             <i class="dataBoxNav_letter dataBoxNavTheme_first">求</i>
             <i class="dataBoxNav_letter dataBoxNavTheme_first">职</i>
             <i class="dataBoxNav_letter dataBoxNavTheme_first">资</i>
             <i class="dataBoxNav_letter dataBoxNavTheme_first">料</i>
          </span>
        <span class="dataBoxNav_theme" id="shuaxin">
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
        <span class="dataBoxNav_theme">
            <i class="dataBoxNav_letter">新</i>
            <i class="dataBoxNav_letter">闻</i>
            <i class="dataBoxNav_letter">发</i>
            <i class="dataBoxNav_letter">布</i>
        </span>
    </div>
    <!-- 右边信息显示 -->
    <div class="dataBox_right">
        <!-- 表单控制 -->
        <form method="post" action="AddJob.action"  enctype="multipart/form-data" accept-charset="UTF-8">
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
                    <input type="text" name="jobInfo.salary" class="salary dataBoxInp_input">
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">
                        工作类型：</i><select name="jobInfo.type">
                    <option >JAVA</option>
                    <option >PYTHON</option>
                    <option >前端</option>
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
                    <i class="dataBoxInp_text">招聘类型：</i>
                    <select name="jobInfo.jobType">
                        <option >社招</option>
                        <option >校招</option>
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
        <!-- 右边用户管理信息 -->
        <div class="dataBox_userInformation dataBox_information">
            <table class="dataBoxUser_table">
                <p class="dataBoxUser_tips"></p>
                <tr class="dataBoxUser_title">
                    <th class="dataBoxUser_value">姓名</th>
                    <th class="dataBoxUser_value">电话</th>
                    <th class="dataBoxUser_value">密码</th>
                    <th class="dataBoxUser_value">邮箱</th>
                    <th class="dataBoxUser_value">ID</th>
                </tr>
            </table>
        </div>
        <!-- 右边会员管理信息 -->
        <div class="dataBox_menberInformation dataBox_information">
            <%--添加普通管理员--%>

            <div class="dataBoxInp_ordinary">

                <h2 class="dataBoxInp_theme">添加普通管理员</h2>
                <form action="ResAdmin.action" method="post">
                    <div class="dataBoxInp_box">
                        <i class="dataBoxInp_text">账号</i>
                        <input type="text" class="describe dataBoxInp_input" name="admin.adminId">
                    </div>
                    <div class="dataBoxInp_box">
                        <i class="dataBoxInp_text">密码</i>
                        <input type="password" class="address dataBoxInp_input" name="admin.adminPassword">
                    </div>
                    <input type="submit" class="dataBoxInp_sub" value="添加会员">
                </form>
                <%--<input type="submit" class="dataBoxInp_sub" value="提交">--%>

            </div>

            <div class="dataBoxInp_super">
                <h2 class="dataBoxInp_theme">超级管理员</h2>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">账号</i>
                    <input type="text" class="describe dataBoxInp_input" readonly="readonly"
                           value="${currentAdmin.adminId}">
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">密码</i>
                    <input type="text" class="address dataBoxInp_input" readonly="readonly"
                           value="${currentAdmin.adminPassword}">
                </div>
            </div>
        </div>
        <!-- 右边数据分析信息 -->
        <div class="dataBox_dataInformation dataBox_information">
            <%--修改的是这里--%>
                <div id="main" style="width: 300px;height:300px;display: inline-block"></div>
                <div id="main2" style="width:300px;height:300px;display: inline-block"></div>
                <div id="main3" style="width:640px;height:300px"></div>
            <%----%>
        </div>
               <%--右边求职信息--%>
        <div class="dataBox_job dataBox_information">
            <table class="dataBoxJob_table">
                <p class="dataBoxJob_tips"></p>
                <tr class="dataBoxJob_title">
                    <th class="dataBoxJob_value">公司</th>
                    <th class="dataBoxJob_value">薪资区间</th>
                    <th class="dataBoxJob_value">工作</th>
                    <th class="dataBoxJob_value">学历</th>
                    <th class="dataBoxJob_value">地址</th>
                </tr>
            </table>
        </div>
                  <%--右边新闻发布--%>
        <div class="dataBox_information dataBox_news">
            <form action="" target="test">
                <input type="text" placeholder="请输入标题" class="news_theme" >
                <div class="news_box">

                    <textarea class="news_text">请输入内容····</textarea>
                </div>
                <input type="submit" value="提交" class="news_tijiao">
            </form>
            <iframe name="test" style="display:none" frameborder="0"></iframe>
        </div>
    </div>
    <script src="../jquery-3.3.1.min.js"></script>

    <!-- 鼠标点击不同导航栏出现不同内容  鼠标点击用户弹出相应内容, 用户管理宽度, 超级会员居中, 右边信息定位, 左边导航栏字体变颜色,  点击删除键清空输入框,输入框点击后高变小 -->
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
            // 点击删除键清空输入框,输入框点击后高变小
            var newsText = $(".news_text");
            var newsTijiao = $(".news_tijiao");
            var newsTheme = $(".news_theme")
            newsText.focus(function () {
                $(this).css({
                    "font-size":"19px",
                    "text-align":"left"
                });
                if(newsText.val() == "请输入内容····") {
                    newsText.val(" ")
                }
            })
            newsTijiao.click(function () {
                newsText.val("请输入内容····");
                newsTheme.val("");
                alert("上传成功！");

            })
        })
    </script>
    <%--用户信息表格--%>
    <script type="text/javascript">
        $(document).ready(function () {
                    // 用户信息
            var tr = $(".dataBoxUser_title");
            var text = "<tr class='dataBoxUser_title'></tr>";
            var text1 = "<tb class='dataBoxUserVal_name'></tb>" +
                "<tb class='dataBoxUserVal_name'></tb>" +
                "<tb class='dataBoxUserVal_name'></tb>" +
                "<tb class='dataBoxUserVal_name'></tb>" +
                "<tb class='dataBoxUserVal_name'></tb>"+
                    "<a href='javascript:' class='dataBoxUserVal_link'>删除</a>"+
                "<a href='javascript:' class='dataBoxUserVal_link'>编辑</a>";
            var length = 1;
            var count = 0;
            var dataBoxUserTop = 0;
            var dataBoxUserLeft = -30;
            $("#shuaxin").click(function () {
                $.ajax({
                    type: 'post',
                    url: 'showData',
                    async: true,
                    dataType: 'json',
                    data: {},
                    success: function (result) {
                        count ++;
                        if(count == 1) {
                            for (var a in result) {
                                for (var b in result[a]) {

                                    tr.after(text);
                                }
                            }
                            ;
                            tr.siblings().append(text1);

                            for (var a in result) {
                                for (var b in result[a]) {
                                    $(".dataBoxUser_title").eq(length).children().eq(0).text(result[a][b].userName);
                                    $(".dataBoxUser_title").eq(length).children().eq(1).text(result[a][b].telephone);
                                    $(".dataBoxUser_title").eq(length).children().eq(2).text(result[a][b].userPassword);
                                    $(".dataBoxUser_title").eq(length).children().eq(3).text(result[a][b].email);
                                    $(".dataBoxUser_title").eq(length).children().eq(4).text(result[a][b].userId);
                                    $(".dataBoxUser_title").eq(length).children(".dataBoxUserVal_link").attr("href","?id=" + result[a][b].userId)
                                    length++;
                                    console.log(length)
                                }
                            }
                            ;
                            $(".dataBoxUser_title").eq(length - 1).children('.dataBoxUserVal_name').css("border-bottom", "1px solid #fff")

                            for (var i = 1; i < $(".dataBoxUser_title").length; i++) {
                                for (var j = 0; j < $(".dataBoxUser_value").length; j++) {
                                    var dataPosition = function (left, top) {
                                        $(".dataBoxUser_title").eq(i).children().eq(j).mouseenter(function () {
                                            $(".dataBoxUser_tips").css({
                                                "display": "block",
                                                "left": left + "px",
                                                "top": top + "px"
                                            });
                                            $(".dataBoxUser_tips").text($(this).text())
                                        });
                                        $(".dataBoxUser_title").eq(i).children().eq(j).mouseleave(function () {
                                            $(".dataBoxUser_tips").css({
                                                "display": "none"
                                            });
                                        });
                                    };

                                    dataPosition(dataBoxUserLeft, dataBoxUserTop);
                                    dataBoxUserLeft += 110;
                                    if (dataBoxUserTop >= 585) {
                                        dataBoxUserLeft = 0;
                                    }
                                    if (j > 3) {
                                        dataBoxUserTop += 40;
                                    }
                                }
                                dataBoxUserLeft = 0;


                            }
                        }
                    },
                    error: function () {
                        alert("加载数据失败");
                    }
                });

            })

                    // 获取用户资料

            var tr1 = $(".dataBoxJob_title");
            var text2 = "<tr class='dataBoxJob_title'></tr>";
            var text3 = "<tb class='dataBoxJobVal_name'></tb>" +
                "<tb class='dataBoxJobVal_name'></tb>" +
                "<tb class='dataBoxJobVal_name'></tb>" +
                "<tb class='dataBoxJobVal_name'></tb>" +
                "<tb class='dataBoxJobVal_name'></tb>" +
                "<a href='javascript:' class='dataBoxUserVal_link'>删除</a>"+
                "<a href='javascript:' class='dataBoxUserVal_link'>编辑</a>";
            var length1 = 1;
            var count1 = 0;
            var dataBoxUserTop1 = 0;
            var dataBoxUserLeft1 = -30;
            $(".dataBoxNav_theme").click(function () {
                $.ajax({
                    type: 'post',
                    url: 'showAllJob',
                    async: true,
                    dataType: 'json',
                    data: {},
                    success: function (result) {
                        count1 ++;
                        if(count1 == 1) {
                            for (var a in result) {
                                for (var b in result[a]) {

                                    tr1.after(text2);
                                }
                            }
                            ;
                            tr1.siblings().append(text3);

                            for (var a in result) {
                                for (var b in result[a]) {
                                    $(".dataBoxJob_title").eq(length1).children().eq(0).text(result[a][b].company);
                                    $(".dataBoxJob_title").eq(length1).children().eq(1).text(result[a][b].salary);
                                    $(".dataBoxJob_title").eq(length1).children().eq(2).text(result[a][b].job);
                                    $(".dataBoxJob_title").eq(length1).children().eq(3).text(result[a][b].academic);
                                    $(".dataBoxJob_title").eq(length1).children().eq(4).text(result[a][b].address);
                                    $(".dataBoxJob_title").eq(length1).children(".dataBoxUserVal_link").attr("href","?id=" + result[a][b].id)
                                    length1 ++;
                                    console.log(result[a][b]);
                                }
                            };





                            $(".dataBoxJob_title").eq(length1 - 1).children('.dataBoxJobVal_name').css("border-bottom", "1px solid #fff")

                            for (var i = 1; i < $(".dataBoxJob_title").length; i++) {
                                for (var j = 0; j < $(".dataBoxJob_value").length; j++) {
                                    var dataPosition = function (left, top) {
                                        $(".dataBoxUser_title").eq(i).children().eq(j).mouseenter(function () {
                                            $(".dataBoxUser_tips").css({
                                                "display": "block",
                                                "left": left + "px",
                                                "top": top + "px"
                                            });
                                            $(".dataBoxUser_tips").text($(this).text())
                                        });
                                        $(".dataBoxUser_title").eq(i).children().eq(j).mouseleave(function () {
                                            $(".dataBoxUser_tips").css({
                                                "display": "none"
                                            });
                                        });
                                    };

                                    dataPosition(dataBoxUserLeft1, dataBoxUserTop1);
                                    dataBoxUserLeft1 += 110;
                                    if (dataBoxUserTop1 >= 585) {
                                        dataBoxUserLeft1 = 0;
                                    }
                                    if (j > 3) {
                                        dataBoxUserTop1 += 40;
                                    }
                                }
                                dataBoxUserLeft1 = 0;


                            }
                        }
                    },
                    error: function () {
                        alert("加载数据失败");
                    }
                });

            })
        });

    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".dataBoxInp_sub").click(function () {

                $.ajax({
                    type: 'post',
                    url: 'RetResAdminInfo',
                    async: false,	//同步执行
                    dataType: 'json',
                    data: {},
                    success: function (result) {
                        alert("添加成功");
                    },
                    error: function () {
                        alert("添加失败");
                    }
                });

            })
        });
        window.location.load();
    </script>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据
        option = {
            title: {
                text: '本站点搜索量前五的关键词',
                subtext: '近一个月',
                x: 'center'
            },
            tooltip: {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
            },
            legend: {
                orient: 'vertical',
                x: 'left',
                data: ['JAVA', 'PYTHON', '大数据', '运维', '人工智能']
            },
            toolbox: {
                show: true,
                feature: {
                    mark: {
                        show: true
                    },
                    dataView: {
                        show: true,
                        readOnly: false
                    },
                    magicType: {
                        show: true,
                        type: ['pie', 'funnel'],
                        option: {
                            funnel: {
                                x: '25%',
                                width: '50%',
                                funnelAlign: 'left',
                                max: 335
                            }
                        }
                    },
                    restore: {
                        show: true
                    },
                    saveAsImage: {
                        show: true
                    }
                }
            },
            calculable: true,
            series: [{
                name: '大数据智能推荐网站搜集',
                type: 'pie',
                radius: '55%',
                center: ['50%', '60%'],
                data: [{
                    value: 335,
                    name: 'JAVA'
                },
                    {
                        value: 310,
                        name: 'PYTHON'
                    },
                    {
                        value: 234,
                        name: '大数据'
                    },
                    {
                        value: 135,
                        name: '运维'
                    },
                    {
                        value: 111,
                        name: '人工智能'
                    }
                ]
            }]
        }; // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main2'));

        // 指定图表的配置项和数据

        option = {
            title: {
                text: '搜索最多的地区',
                subtext: '近一个月'
            },
            tooltip: {
                trigger: 'axis'
            },
            legend: {
                orient: 'vertical',
                x: 'right',
                y: 'bottom',
                data: ['预算分配']
            },
            toolbox: {
                show: true,
                feature: {
                    mark: {
                        show: true
                    },
                    dataView: {
                        show: true,
                        readOnly: false
                    },
                    restore: {
                        show: true
                    },
                    saveAsImage: {
                        show: true
                    }
                }
            },
            polar: [{
                indicator: [{
                    text: '北京',
                    max: 250
                },
                    {
                        text: '成都',
                        max: 250
                    },
                    {
                        text: '重庆',
                        max: 250
                    },
                    {
                        text: '广州',
                        max: 250
                    },
                    {
                        text: '深圳',
                        max: 250
                    },
                    {
                        text: '上海',
                        max: 250
                    }
                ]
            }],
            calculable: true,
            series: [{
                name: '点击数',
                type: 'radar',
                data: [{
                    value: [198, 177, 222, 230, 234, 243],
                    name: '点击数'
                }]
            }]
        };

        myChart.setOption(option);
    </script>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main3'));
        option = {
            title: {
                text: '客户流量最多的工作类型',
                subtext: '近一个月'
            },
            tooltip: {
                trigger: 'axis'
            },
            legend: {
                data: ['意向', '流量', '提交']
            },
            toolbox: {
                show: true,
                feature: {
                    mark: {
                        show: true
                    },
                    dataView: {
                        show: true,
                        readOnly: false
                    },
                    magicType: {
                        show: true,
                        type: ['line', 'bar', 'stack', 'tiled']
                    },
                    restore: {
                        show: true
                    },
                    saveAsImage: {
                        show: true
                    }
                }
            },
            calculable: true,
            xAxis: [{
                type: 'category',
                boundaryGap: false,
                data: ['JAVA', 'PYTHON', 'PHP', '大数据', '人工智能', '运维', '会计']
            }],
            yAxis: [{
                type: 'value'
            }],
            series: [{
                name: '意向',
                type: 'line',
                smooth: true,
                itemStyle: {
                    normal: {
                        areaStyle: {
                            type: 'default'
                        }
                    }
                },
                data: [10, 12, 21, 54, 33, 21, 71]
            },
                {
                    name: '流量',
                    type: 'line',
                    smooth: true,
                    itemStyle: {
                        normal: {
                            areaStyle: {
                                type: 'default'
                            }
                        }
                    },
                    data: [30, 82, 34, 91, 30, 10, 20]
                },
                {
                    name: '提交',
                    type: 'line',
                    smooth: true,
                    itemStyle: {
                        normal: {
                            areaStyle: {
                                type: 'default'
                            }
                        }
                    },
                    data: [2, 11, 1, 4, 10, 50, 20]
                }
            ]
        };

        // 指定图表的配置项和数据
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
</body>
</html>
<%--showAllJob--%>