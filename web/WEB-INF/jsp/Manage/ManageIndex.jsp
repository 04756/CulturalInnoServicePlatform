<%--
  Created by IntelliJ IDEA.
  User: YHY
  Date: 2018/12/22
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>文化创意产业服务管理平台</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>

    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="../js/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/xadmin.js"></script>

</head>
<body>
<!-- 顶部开始 -->
    <div class="container">
        <div class="logo"><a href="./index.html">文化创意产业服务平台</a></div>
        <div class="left_open">
            <i title="展开左侧栏" class="iconfont">&#xe699;</i>
        </div>
        <ul class="layui-nav right" lay-filter="">
            <li class="layui-nav-item">
                <a href="javascript:;">${sessionScope.currentUser.userId}</a>
                <dl class="layui-nav-child"> <!-- 二级菜单 -->
                    <dd><a href="/getUserInfo.action">个人信息</a></dd>
                    <dd><a href="ManageLogin.html">切换帐号</a></dd>
                    <dd><a href="ManageLogin.html">退出</a></dd>
                </dl>
            </li>
        </ul>

    </div>
    <!-- 顶部结束 -->
    <!-- 中部开始 -->
    <!-- 左侧菜单开始 -->
    <div class="left-nav">
        <div id="side-nav">
            <ul id="nav">
                <li>
                    <a href="javascript:;">
                        <i class="iconfont">&#xe698;</i>
                        <cite>订单管理</cite>
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a _href="toList?listName=Order">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>订单列表</cite>
                            </a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="javascript:;">
                        <i class="iconfont">&#xe6f7;</i>
                        <cite>供求管理</cite>
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a _href="toList?listName=SD">    <!-- 类似订单列表(order-list.html) -->
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>供求列表</cite>
                            </a>
                        </li>
                        <li>
                            <a _href="editEssay">    <!-- 增加供求 -->
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>增加供求</cite>
                            </a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="javascript:;">
                        <i class="iconfont">&#xe6b4;</i>
                        <cite>展会管理</cite>
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a _href="toList?listName=Exh">    <!-- 类似订单列表(order-list.html) -->
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>展会列表</cite>
                            </a>
                        </li>
                        <li>
                            <a _href="editEssay">    <!-- 增加展会 -->
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>增加展会</cite>
                            </a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="javascript:;">
                        <i class="iconfont">&#xe6a4;</i>
                        <cite>资讯管理</cite>
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a _href="toList?listName=News">    <!-- 类似订单列表(order-list.html) -->
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>资讯列表</cite>
                            </a>
                        </li>
                        <li>
                            <a _href="editEssay">    <!-- 增加资讯 -->
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>增加资讯</cite>
                            </a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="javascript:;">
                        <i class="iconfont">&#xe6f4;</i>
                        <cite>产品管理</cite>
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a _href="toList?listName=Product">    <!-- 类似订单列表(order-list.html) -->
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>产品列表</cite>
                            </a>
                        </li>
                        <li>
                            <a _href="editProduct">    <!-- 增加产品 -->
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>增加产品</cite>
                            </a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="javascript:;">
                        <i class="iconfont">&#xe6f4;</i>
                        <cite>留言管理</cite>
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a _href="toList?listName=Message">    <!-- 类似订单列表(order-list.html) -->
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>产品列表</cite>
                            </a>
                        </li>
                    </ul>
                </li>

                <c:if test="${sessionScope.currentUser.type == 15}">
                <li>
                    <a href="javascript:;">
                        <i class="iconfont">&#xe726;</i>
                        <cite>管理员管理</cite>
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <div id="apart">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>权限分配</cite>
                            </div>
                        </li>
                    </ul>
                </li>
                </c:if>

            </ul>
        </div>
    </div>

    <!-- 右侧主体开始 -->
    <div class="page-content">
        <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
            <ul class="layui-tab-title">
                <li class="home"><i class="layui-icon">&#xe68e;</i>我的桌面</li>
            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">
                    <iframe src='ManageWelcome.html' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
                </div>
            </div>
        </div>
    </div>
    <div class="page-content-bg"></div>
    <!-- 右侧主体结束 -->
    <!-- 中部结束 -->
    <!-- 底部开始 -->
    <div class="footer">
        <div class="copyright">Copyright ©2017 x-admin v2.3 All Rights Reserved</div>
    </div>
<!-- 底部结束 -->
</body>
</html>