<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>大数据智能求职系统后台</title>
    <link href="${pageContext.request.contextPath}/test/layuiManager/css/style1.css"
          rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/test/layuiManager/layui/css/layui.css" media="all">
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts-all-3.js"></script>
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <jsp:include page="../common/head.jsp"></jsp:include>
    <jsp:include page="../common/manu.jsp"></jsp:include>
    <div class="layui-body layui-tab-content site-demo site-demo-body">
        <div class="layui-tab-item layui-show">
            <div class="layui-main buLay">
                <div class="bread"><jsp:include page="../common/nav.jsp"></jsp:include></div>
                <div id="main" style="width: 400px;height:350px;display: inline-block"></div>
                <div id="main2" style="width:400px;height:350px;display: inline-block"></div>
                <div id="main3" style="width:700px;height:350px"></div>
            </div>
        </div>
    </div>
    <%--<jsp:include page="<%=mainPage%>"></jsp:include>--%>
    <jsp:include page="../common/foot.jsp"></jsp:include>
</div>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/test/layuiManager/layui/layui.js" charset="utf-8"></script>
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
