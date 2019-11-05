<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/loginScript.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<html>
<head>
    <link rel="shortcut icon" href="../image/BMS.png"/>
    <title>图书管理系统—管理员登录</title>
</head>
<body>

<%
    request.setCharacterEncoding("utf-8");
    if (session.getAttribute("adminname") != null && session.getAttribute("logout") == null) {
    response.sendRedirect("/library/main.jsp");
    }
%>



<%
    String username = "";
    String password = "";
    Cookie[] cookies = request.getCookies();
    if (cookies != null && cookies.length > 0) {
        for (Cookie c : cookies) {
            if ("username".equals(c.getName())) {
                username = c.getValue();
            } else if ("password".equals(c.getName())) {
                password =c.getValue();
            }
        }
    }
%>

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
                <div><h4 class="src--formTitle--3CTsN_D">登录</h4>
                    <div>
                        <div dir="ltr" role="row" class="next-row src--formItem--18-YaOK">
                            <div dir="ltr" role="gridcell" class="next-col">
                                <%--<span class="next-input next-large src--input--4Jhht4N">--%>
                                    <input type="text" id="usernameinput" name="username" placeholder="   用户名" value="<%=username%>"
                                           height="38" weight="320" maxlength="300"/>
                                <%--</span>--%>
                            </div>
                            <div dir="ltr" role="gridcell" class="next-col"></div>
                        </div>
                        <div dir="ltr" role="row" class="next-row src--formItem--18-YaOK">
                            <div dir="ltr" role="gridcell" class="next-col">
                                <%--<span class="next-input next-medium src--input--4Jhht4N">--%>
                                     <input type="password" id="passwordinput" name="password"
                                            height="50px" maxlength="20" placeholder="   密码" value="<%=password%>"/>
                                <%--</span>--%>
                            </div>
                            <div dir="ltr" role="gridcell" class="next-col"></div>
                        </div>
                        <div dir="ltr" role="row" class="next-row src--formItem--18-YaOK">
                            <div dir="ltr" role="gridcell" class="next-col">
                                <input type="checkbox" name="remember" id="rememberinput" value="yes"/>
                                <span class="rememberme">记住账号</span>
                            </div>
                        </div>
                        <button id="loginbutton" class="btn btn-primary" onclick="logincheck()">登录</button>
                        <span class="errorsubmit" id="checkinfo"></span>
                        <div dir="ltr" role="row" class="next-row src--footer--BS_G51x">
                            <br></br>
                            <a href="${pageContext.request.contextPath}/register.jsp" class="src--link--36F4X59">立即注册</a>&nbsp;&nbsp;

                            <a href="${pageContext.request.contextPath}/forgetpassword.jsp" class="src--link--36F4X59">找回密码</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
<%
    String header = response.getHeader("status");
    if ("true".equals(header)) {
%>
<script>

    alert("注册成功！");
</script>


<% }%>