<%--
  Created by IntelliJ IDEA.
  User: 12952
  Date: 2019/3/15
  Time: 15:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="echarts-all.js"></script>
    <script src="jquery.js"></script>
    <script type="text/javascript">
        var obj = [];
        $(document).ready(function () {
            $("button").click(function () {

                $.ajax({
                    type: 'post',
                    url: 'showData',
                    async: false,	//同步执行
                    dataType: 'json',
                    data: {},
                    success: function (result) {
                        var length = 0;
                        for (var j in result) {
                            console.log(result);
                        }
                        console.log(result.toString());
                        for (var a in result) {
                            for (var b in result[a]){
                                length++;
                            }
                        }
                        console.log(length);
                        for (var i = 0; i < (length+1); i++) {
                            for (var k in result) {
                                console.log(result[k]);
                                console.log(result[i]);
                                console.log(result[k][i]);
                            }
                        }
                        // for(var k = 0; k < 5; k ++) {
                        //     for (var i in result) {
                        //         console.log(result[k][i])
                        //     }
                        // }
                    },
                    error: function () {
                        alert("加载数据失败");
                    }
                });

            })
        });
        window.location.load();
    </script>
</head>
<body>
<table border="1">
    <tr>
        <tb class="a"></tb>
        <tb></tb>
    </tr>
    <tr>
        <tb></tb>
        <tb></tb>
    </tr>
</table>
<button>查看</button>
<div style="height: 400px;width: 400px;border: #00a8ec">
</div>
</body>
</html>
