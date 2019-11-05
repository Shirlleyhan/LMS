<%--
  Created by IntelliJ IDEA.
  User: 韩阳
  Date: 2019/10/23
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/register.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/registScript.js"></script>

<%
    request.setCharacterEncoding("utf-8");
    if ("false".equals(response.getHeader("status"))) {
%>

   <script>alert("注册失败！");</script>
<%}%>
<html>
<head>
    <title>注册新用户</title>
</head>
<body>
<div id="mountNode">
    <div class="src--container--cUrVpAp">
        <div class="src--header--2oXAaZR">
            <a href="#" class="src--meta--3tZ1SSp">
                <img class="src--logo--2SJAJQO" src="image/LMS.png" alt="logo">
                <span class="src--title--_kuSFDj">图书管理系统</span>
            </a>
            <p class="src--desc--2RGJHZJ">规范化 信息化 自动化</p>
        </div>
        <div class="src--formContainer--2bn7imR">
            <h4 class="src--formTitle--3CTsN_D">管理员注册</h4>
            <form role="grid" class="next-form next-large" action="/library/SetupAction" method="post">
                <div class="next-form-item next-left next-large">
                    <div class="next-form-item-control">
                        <span data-meta="Field" class="next-input next-large inputbox">
                            <span class="next-input-inner next-before">
                                <i class="next-icon next-icon-account next-small src--inputIcon--39GsUgc"></i>
                            </span>
                            <input id="username" placeholder="用户名" name="username" height="100%" autocomplete="off"
                                   value="">
                        </span>
                    </div>
                </div>
                <div type="email" message="请输入正确的邮箱" class="next-form-item next-left next-large">
                    <div class="next-form-item-control">
                        <span data-meta="Field" class="next-input next-large inputbox">
                            <span class="next-input-inner next-before">
                                <i class="next-icon next-icon-email next-small src--inputIcon--39GsUgc"></i></span>
                            <input id="email" placeholder="邮箱" name="email" maxlength="20" height="100%"
                                   autocomplete="off"
                                   value=""></span></div>
                </div>
                <div class="next-form-item next-left next-large">
                    <div class="next-form-item-control">
                        <span data-meta="Field" class="next-input next-large inputbox">
                            <span class="next-input-inner next-before">
                        <i test="lock" class="next-icon next-icon-account next-small src--inputIcon--39GsUgc"></i>
                            </span>
                            <input id="passwd" placeholder="至少8位密码" name="passwd" height="100%" type="password"
                                   autocomplete="off" value="">
                        </span>
                    </div>
                </div>
                <div class="next-form-item next-left next-large">
                    <div class="next-form-item-control">
                        <span data-meta="Field" class="next-input next-large inputbox">
                            <span class="next-input-inner next-before">
                                <i test="lock" class="next-icon next-icon-email next-small src--inputIcon--39GsUgc"></i>
                            </span>
                            <input id="rePasswd" placeholder="确认密码" name="rePasswd" height="100%" type="password"
                                   autocomplete="off" value="">
                        </span>
                    </div>
                </div>
                <div dir="ltr" role="row" class="next-row">
                    <input type="submit" class="next-btn next-medium next-btn-primary src--submitBtn--3oh-K6w"
                            onclick="checkPwd()" value="注 册">
                </div>
                <span class="errorsubmit" id="checkinfo"></span>
                <div dir="ltr" role="row" class="next-row src--tips--1wmdyuu">
                    <a href="${pageContext.request.contextPath}/index.jsp" class="src--link--36F4X59">使用已有账户登录</a>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
