<%--
  Created by IntelliJ IDEA.
  User: 韩阳
  Date: 2019/11/6
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/rank.css">
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("adminname") == null){
        response.sendRedirect("/Library/index.jsp");
    }
%>
<html>
<head>
    <title>数据统计</title>
</head>
<body>
    <div class="black" align="center">
        <img src="./image/head2.png" >
    </div>
    <jsp:include page="nav.html"/>
    <div style="height: 800px">
        <div style="height: 400px">
            <div class="container-block " style="background-color: rgb(255, 255, 255); border-radius: 6px; padding: 20px; margin-bottom: 20px;">
                        <div dir="ltr" role="row" class="next-row next-row-wrap">
                    <div dir="ltr" role="gridcell" class="next-col" style="border-right: 1px solid rgb(238, 238, 238);">
                        <c:forEach items="${ranks}" var="s"  varStatus="vs">
                            <c:forEach items="${s}" var="temp">
                                <a href="#" class="src--item--oaqVjED" id="">
                                    <span class="src--index--3Ww4jnI" style="background-color: rgb(247, 68, 68);">${vs.count}</span>
                                    <span class="src--keyword--3P326Es">${temp.key}</span>
                                    <span class="src--total--19spkRt">${temp.value}</span>
                                    <br>
                                </a>
                            </c:forEach>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>

        <div id="main" style="width: 1100px;height:400px;margin-left: 20px"></div>
    </div>
    <jsp:include page="foot.html"/>
    </body>

    <!-- 引入jquery -->
    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
    <!-- 引入 echarts.js -->
    <script src="https://cdn.bootcss.com/echarts/4.1.0/echarts.js"></script>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据
        var option = {

            title: {
                text: '热书排行'
            },
            tooltip: {},
            legend: {
                data:['借出次数']
            },
            xAxis: {

            },
            yAxis: {
                data: ["Java核心技术","C++PrimaerPlus","算法竞赛入门经典","概率论与数理统计","数据结构(C语言版)","11处特工皇妃"]
            },
            series: [{
                name: '借出次数',
                type: 'bar',
                data: [2, 1, 1, 1, 1, 1],
                itemStyle:{
                    normal:{
                        color:'#969696',
                        emphasis: {
                            barBorderRadius: 30
                        },
                            //柱形图圆角，初始化效果
                            barBorderRadius:[10, 10, 10, 10],
                            label: {
                                show: true,//是否展示
                                textStyle: {
                                    fontWeight:'bolder',
                                    fontSize : '12',
                                    fontFamily : '微软雅黑',

                            }
                        }

                    }
                }
            }]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>

</html>
