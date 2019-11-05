<%--
  Created by IntelliJ IDEA.
  User: Creams
  Date: 2018/1/11
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="utf-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/addbook.css">
<script src="${pageContext.request.contextPath}/js/AddScript.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<html>
<head>
    <title>读者证办理</title>
</head>
<body>
<div class="black" align="center">
    <img src="./image/head2.png" >
</div>
<jsp:include page="nav.html"/>
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("adminname") == null){
        response.sendRedirect("/Library/index.jsp");
    }
%>
<%
    if (session.getAttribute("msg") != null) {
        %>
        <script>
            alert("添加成功！");
        </script>
   <%

    }
       session.removeAttribute("msg");
   %>
<div class="hei">
<form action="ReaderAction?action=AddReader" <%--onsubmit="return errorsubmit()"--%> method="post">
    <div class="bookinfo">
        <div class="title">
            <span>请输入读者信息</span>
        </div>
        <div>
            <span class="infotitle">用户名：</span><input type="text" name="username" class="required" id="bookid" onkeyup="bookcheck()"  ><span id="bookidcheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">密码：</span><input type="password" class="required" name="password"><span id="booknamecheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">读者姓名：</span><input type="text" class="required" name="name"><span id="bookauthorcheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">性别：</span><input type="text" class="required" name="sex"><span id="bookpublishercheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">邮箱：</span><input type="text" class="required" name="mail"><span id="bookpricecheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">年级：</span><input type="text" class="required" name="grade"><span id="bookcategorycheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">班级：</span><input type="text" class="required" name="classnum" ><span id="bookstorecheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">联系电话：</span><input type="text" class="required" name="tel" ><span id="booklocationcheck" class="error"></span>
        </div>

        <div class="button">
            <button type="submit" class="btn btn-default" name="over" value="1">完成添加</button>
        </div>
    </div>
</form>
</div>

<jsp:include page="foot.html"/>
</body>
</html>
    
