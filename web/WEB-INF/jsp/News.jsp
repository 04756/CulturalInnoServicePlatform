<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <script src="js/page.js"></script>

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
    <div class="row">
        <div style="width: 1100px;justify-content: center;margin-top: 30px;margin-left: 50px;">
            <ul id="lists">
                <c:forEach items="${allNewsList}" var="news">
                    <li>
                        <a href="#">
                                ${news.title}
                                ${news.establishTime}
                                ${news.hits}
                        </a>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
    <!-- 分页 -->
    <div class="row" style="justify-content: center;margin-top: 30px;">
        <ul class="pagination">
            <h4 id="curPage">当前页</h4>
            <li class="page-item"><button class="btn btn-default" id="pre">Previous</button></li>
            <li class="page-item"><button class="btn btn-default" id="next">Next</button></li>
        </ul>
    </div>
    <div class="row" style="text-align: left;background-color: black;color: white;margin-top: 40px;">
        <div style="padding: 50px;padding-left: 80px;padding-right: 150px">Designed and built with all the love in the world by @mdo and @fat. Maintained by the core team with the help of our contributors.

            本项目源码受 MIT开源协议保护，文档受 CC BY 3.0 开源协议保护。</div>
    </div>
</div>
</body>
</html>
