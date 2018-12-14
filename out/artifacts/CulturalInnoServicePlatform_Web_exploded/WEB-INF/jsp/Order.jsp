<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user0
  Date: 2018/12/14
  Time: 0:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>文化创意中心</title>
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> -->

    <!-- <script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>  -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/base.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"/>
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"/>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"/>
    <script src="js/productPage.js"/>
</head>
<body>
<div class="container-fluid">
    <div class="row log">
        <h1 style="width: auto;">文化创意中心</h1>

    </div>
    <div class="row">
        <nav class="navbar navbar-expand-sm navbar-dark" style="background-color: #1e50ae;font-weight: bold;width:100%;">
            <!-- Brand/logo -->
            <a class="navbar-brand" href="#">Logo</a>

            <!-- Links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="#" >供求</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">展会</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">资讯</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                        产品
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">书画</a>
                        <a class="dropdown-item" href="#">文化服饰</a>
                        <a class="dropdown-item" href="#">器物</a>
                    </div>
                </li>
            </ul>
        </nav>
    </div>

    <!-- 当前栏目名字 -->
    <div class="row">
        <h3 style="margin-left: 90px;margin-top: 30px;">订单信息</h3>
    </div>

    <div class="row" style="justify-content: center;">
        <div style="width: 1200px;justify-content: center;margin-top: 30px;" id="orderLists">
            <c:forEach items="${orderInfoList}" var="order">
            <!-- 一个订单的开始 -->
            <div class="card">
                <div class="card-header">订单编号:${order.first}</div>
                <div class="card-body">
                    <img src="http://static.runoob.com/images/mix/img_avatar.png" alt="Card image cap" style="width: 100px;height: 100px;float: left;">
                    <div class="orderTitle">${order.second}</div>
                    <p class="text-right" style="margin-right: 30px;position: relative;bottom: -20px;">购买数量:${order.third} &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp价格：<span style="display: inline-block;color: #FF0000">${order.fourth}</span></p>
                </div>
                <div class="card-footer">
                    <button type="button" class="btn btn-light btn-outline-secondary btn-lg float-right">评价</button>
                </div>
            </div>
            <!-- 一个订单的结尾 -->
            </c:forEach>
        </div>
    </div>
    <!-- 分页 -->
    <div class="row" style="justify-content: center;margin-top: 30px;">
        <h5 id="ordercurPage">1</h5>
        <ul class="pagination">
            <li class="page-item"><a class="page-link" href="#" id="orderpre">Previous</a></li>
            <li class="page-item"><a class="page-link" href="#" id="ordernext">Next</a></li>
        </ul>
    </div>
    <div class="row" style="text-align: left;background-color: black;color: white;margin-top: 40px;">
        <div style="padding: 50px;padding-left: 80px;padding-right: 150px">Designed and built with all the love in the world by @mdo and @fat. Maintained by the core team with the help of our contributors.

            本项目源码受 MIT开源协议保护，文档受 CC BY 3.0 开源协议保护。
        </div>
    </div>
</div>
</body>
</html>
