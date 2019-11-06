<%--
  Created by IntelliJ IDEA.
  User: 韩阳
  Date: 2019/11/6
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"  isErrorPage="true" pageEncoding="utf-8"%>
<%response.setStatus(HttpServletResponse.SC_OK);%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/error.css">
<html>
<head>
    <meta charset="utf-8">
    <link rel="icon" href="https://img.alicdn.com/tps/TB1kBU7NpXXXXXLXXXXXXXXXXXX-160-160.png" type="image/x-icon">
    <link rel="shortcut icon" href="https://img.alicdn.com/tps/TB1kBU7NpXXXXXLXXXXXXXXXXXX-160-160.png">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>图书管理系统</title>
    <link href="index.jsp" rel="stylesheet">
</head>
<body>
<div id="mountNode">
    <div class="basic-not-found">
        <div class="container-block "
             style="background-color: rgb(255, 255, 255); border-radius: 6px; padding: 20px; margin-bottom: 20px;">
            <div class="src--exceptionContent--nCmgvxD"><img src="./assets/8c382430f673ad2237bbf19e5c8a4b00.png"
                                                             class="src--imgException--3ZVP47Y" alt="页面不存在">
                <div class="prompt"><h3 class="src--title--_kuSFDj">抱歉，你访问的页面不存在</h3>
                    <p class="src--description--1PKuUWM">您要找的页面没有找到，请返回<a href="#">首页</a>继续浏览</p></div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="./index.js"></script>

</body>
</html>