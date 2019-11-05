<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/home.css"  type="text/css" />
<link rel="stylesheet" href="css/login.css"  type="text/css" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>.
<html>
<head>
    <title>登录成功</title>
</head>
<body>
<div style="background: #343a40;margin: 0px" align="center">
    <img src="./image/head2.png" >
</div>

<nav class="navbar navbar-expand-md bg-dark navbar-dark">
    <a style="display: inline-block;
    color: white;
    font-size:18px;
    padding-top: .3125rem;
    padding-bottom: .3125rem;
    margin-right: 1rem;
    line-height: inherit;
    white-space: nowrap" href="#">Library</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" style="font-size:16px" href="main.jsp">首页</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" style="font-size:16px" href="" id="navbardrop" data-toggle="dropdown">
                    图书管理
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" style="font-size:16px" href="BookAction?action=getall">查看图书总表</a>
                    <a class="dropdown-item" style="font-size:16px" href="AddBook.jsp">添加书本</a>
                    <a class="dropdown-item" style="font-size:16px" href="BookAction?action=gettemp">查看预添加书本列表</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" style="font-size:16px" href="" id="navbardrop" data-toggle="dropdown">
                    借书与还书
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" style="font-size:16px" href="borrow.jsp">借书</a>
                    <a class="dropdown-item" style="font-size:16px" href="return.jsp">还书</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" style="font-size:16px" href="IOAction?action=getlog">图书进出记录</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" style="font-size:16px" href="" data-toggle="dropdown">用户管理</a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" style="font-size:16px" href="AddReader.jsp">添加读者</a>
                    <a class="dropdown-item" style="font-size:16px" href="ReaderAction?action=GetAllReader">查看读者信息</a>

                </div>
            </li>
            <li class="nav-item dropdown" align="right">
                <a class="nav-link dropdown-toggle" style="font-size:16px" href="" id="navbardrop" data-toggle="dropdown">
                    数据统计
                </a>
            </li>
            <li class="nav-item dropdown" align="right">
                <a class="nav-link dropdown-toggle" style="font-size:16px" href="" id="navbardrop" data-toggle="dropdown">
                    管理员
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" style="font-size:16px" href="LoginAction?action=logout">注销</a>
                </div>
            </li>
        </ul>
    </div>
</nav>

<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<body>
<link rel="stylesheet" href="//cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="//cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="//cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/login.css" type="text/css"/>
<script language="JavaScript" src="js/popper.min.js"></script>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="hei">
                <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2000">
                    <!-- 轮播（Carousel）指标 -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                    <!-- 轮播（Carousel）项目 -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="./image/fusheng.png" alt="First slide">
                        </div>
                        <div class="item">
                            <img src="./image/renxing.png" alt="Second slide">
                        </div>
                        <div class="item">
                            <img src="./image/santi.png" alt="Third slide">
                        </div>
                    </div>
                    <!-- 轮播（Carousel）导航 -->
                    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="thumbnail">
                            <img alt="300x200" src="./image/book.png"/>
                            <div class="caption">
                                <h3 align="center">
                                    图书管理
                                </h3>
                                <p style="text-indent:2em;">
                                    在此可查看图书总表，本模块包含对图书的添加、删除和图书信息更改。
                                </p>
                                <p align="center">
                                    <a class="btn btn-primary" href="BookAction?action=getall">查看详情</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="thumbnail">
                            <img alt="300x200" src="./image/list.png"/>
                            <div class="caption">
                                <h3 align="center">
                                    借书与还书
                                </h3>
                                <p align="center" style="text-indent:2em;">
                                    <br>查看详情可实现借书与还书功能。<br>
                                </p>
                                <p align="center">
                                    <a class="btn btn-primary" href="borrow.jsp">查看详情</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="thumbnail">
                            <img alt="300x200" src="./image/user.png"/>
                            <div class="caption">
                                <h3 align="center">
                                    用户管理
                                </h3>
                                <p style="text-indent:2em;">
                                    办理读者证请点击此处。本模块包含读者证的办理，读者信息、权限的修改，读者证挂失和注销。
                                <p align="center">
                                    <a class="btn btn-primary" href="#">查看详情</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
</body>
</html>
<!DOCTYPE html>
<html>
<body>
<link rel="stylesheet" href="css/home.css" type="text/css"/>
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
<script language="JavaScript" src="js/jquery-3.2.1.min.js"></script>
<script language="JavaScript" src="js/popper.min.js"></script>
<div style=" padding: 50px 0;color: #fff; background: #475268;height: 280px;">
    <div style=" width: 1200px;margin: 0 auto;">
        <div dir="ltr" role="row" style="display: -webkit-box;display: -webkit-flex;display: -ms-flexbox;display: flex;">
            <div dir="ltr" role="gridcell"style="-webkit-box-flex: 1;-webkit-flex: 1;-ms-flex: 1;flex: 1;    -webkit-box-flex: 0;-webkit-flex: 0 0 33.33333%;
    -ms-flex: 0 0 33.33333%;
    flex: 0 0 33.33333%;
    width: 33.33333%;
    max-width: 33.33333%;">
                <h3 style="margin-bottom: 20px;font-weight: 400;font-size: 20px;">关于我们</h3>
                <div><a class="src--link--1111">私权政策</a><a class="src--link--1111">加入我们</a></div>
            </div>
            <div dir="ltr" role="gridcell" class="next-col next-col-l-8">
                <h3 style="margin-bottom: 20px;font-weight: 400;font-size: 20px;">使用帮助</h3>
                <div><a class="src--link--1111">联系我们</a><a class="src--link--1111">使用文档</a></div>
            </div>
            <div dir="ltr" role="gridcell" class="next-col next-col-l-8">
                <h3 style="margin-bottom: 20px;font-weight: 400;font-size: 20px;">使用答疑群</h3>
                <img src="./image/code.png" alt="qr-code" class="src--qrcode--1MezR8t">
            </div>
        </div>
        <p style="margin-top: 20px;text-align: center;">韩小阳网络科技有限公司 © 2019 版权所有</p></div>
</div>
</body>
</html>

</body>
</html>