<%--
  Created by IntelliJ IDEA.
  User: 韩阳
  Date: 2019/10/24
  Time: 13:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/forgetpassword.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/forgetPassword.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>


<%
    request.setCharacterEncoding("utf-8");
    if ("false".equals(response.getHeader("status"))) {
%>

<script>alert("没有此用户！");</script>
<%}%>

<%
    request.setCharacterEncoding("utf-8");
    if ("true".equals(response.getHeader("status"))) {
%>

<script>alert("邮件已发送");</script>
<%}%>

<html>
<head>
    <link rel="shortcut icon" href="../image/BMS.png"/>
    <title>忘记密码</title>
</head>
<body>
<div class="src--container--cUrVpAp">
    <div dir="ltr" role="row" class="next-row next-row-wrap">
        <div dir="ltr" role="gridcell" class="next-col next-col-l-12">
            <div class="src--containerForget--3dx7s4z">
                <div><a href="#" class="src--link--36F4X59">
                    <img class="src--logoImg--1PqlSkW" src="image/LMS.png" alt="logo"></a></div>
                <div class="src--title--_kuSFDj">图书管理系统<br></div>
                <div class="src--title--_kuSFDh">规范化  信息化  自动化</div>
                <p class="src--description--1PKuUWM">Library Management System by HanYang</p>
                <div class="src--border--9R9D0np"></div>
            </div>
        </div>
        <div dir="ltr" role="gridcell" class="next-col next-col-l-12">
            <div class="src--content--3DDvqca">
                <div><h4 class="src--formTitle--3CTsN_D">忘记密码</h4>
                    <form action="/library/ForgetpasswordAction" method="post" id="form">
                        <div>
                            <div dir="ltr" role="row" class="next-row src--formItem--18-YaOK">
                                <div dir="ltr" role="gridcell" class="next-col">
                                    <%--<span class="next-input next-large src--input--4Jhht4N">--%>
                                    <input type="text" id="usernameinput" name="username" placeholder="   用户名" value=""
                                           height="38" weight="320" maxlength="300"/>
                                    <%--</span>--%>
                                </div>
                                <div dir="ltr" role="gridcell" class="next-col"></div>
                            </div>
                            <div dir="ltr" role="row" class="next-row src--formItem--18-YaOK">
                                <div dir="ltr" role="gridcell" class="next-col">
                                    <%--<span class="next-input next-medium src--input--4Jhht4N">--%>
                                    <input type="text" id="mail" name="mail"
                                           height="50px" maxlength="20" placeholder="   邮箱" value=""/>
                                    <%--</span>--%>
                                </div>
                                <div dir="ltr" role="gridcell" class="next-col"></div>
                            </div>
                            <input type="button" id="loginbutton" class="btn btn-primary" value="找回密码" onclick="sendmail()"/>
                            <span class="errorsubmit" id="checkinfo"></span>
                            <div dir="ltr" role="row" class="next-row src--footer--BS_G51x">
                                <br></br>
                                <a href="${pageContext.request.contextPath}/index.jsp" class="src--link--36F4X59">重新登录</a>&nbsp;&nbsp;

                                <a href="${pageContext.request.contextPath}/register.jsp" class="src--link--36F4X59">重新注册</a>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
