<%--
  Created by IntelliJ IDEA.
  User: user0
  Date: 2018/12/11
  Time: 15:51
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
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>


</head>
<body>

    <div class="container-fluid">
        <jsp:include page="headder.jsp"/>
        <div class="row" style="margin-top: 5px;justify-content: center;">
            <div id="demo" class="carousel slide" data-ride="carousel"
                 style="width: 800px;display: inline-block;margin-top: 45px;">

                <!-- 指示符 -->
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                </ul>

                <!-- 轮播图片 -->
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="http://static.runoob.com/images/mix/img_fjords_wide.jpg">
                    </div>
                    <div class="carousel-item">
                        <img src="http://static.runoob.com/images/mix/img_nature_wide.jpg">
                    </div>
                    <div class="carousel-item">
                        <img src="http://static.runoob.com/images/mix/img_mountains_wide.jpg">
                    </div>
                </div>

                <!-- 左右切换按钮 -->
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>

            </div>
            <div class="newsList">
                <h3>资讯信息</h3>
                <div class="news">
                    <div lass="newTitle">title</div>
                    <div class="newsInfo">sfdsfghjk,jhgfbdvdcxskmjnhbgfvdcsxmjnhbgvfcd</div>
                </div>
                <div class="news">
                    <div lass="newTitle">title</div>
                    <div class="newsInfo">sfdsfghjk,jhgfbdvdcxskmjnhbgfvdcsxmjnhbgvfcd</div>
                </div>
                <div class="news">
                    <div lass="newTitle">title</div>
                    <div class="newsInfo">sfdsfghjk,jhgfbdvdcxskmjnhbgfvdcsxmjnhbgvfcd</div>
                </div>
                <div class="news">
                    <div lass="newTitle">title</div>
                    <div class="newsInfo">sfdsfghjk,jhgfbdvdcxskmjnhbgfvdcsxmjnhbgvfcd</div>
                </div>
            </div>
        </div>

        <div class="row" style="margin-top: 10px;justify-content: center;">
            <div class="MidNewsList">
                <div class="MidNewsListTitle">供应</div>
                    <ul class="MidNewsListContain">
                        <li><a href="#">萨凡吃过昆明受到各方沟通汇报给别人</a></li>
                        <li><a href="#">萨凡吃过昆明受到各方沟通汇报给别人</a></li>
                        <li><a href="#">萨凡吃过昆明受到各方沟通汇报给别人</a></li>
                        <li><a href="#">萨凡吃过昆明受到各方沟通汇报给别人</a></li>
                        <li><a href="#">萨凡吃过昆明受到各方沟通汇报给别人</a></li>
                        <li><a href="#">萨凡吃过昆明受到各方沟通汇报给别人</a></li>
                    </ul>
                </div>
                <div class="MidNewsList">
                    <div class="MidNewsListTitle">需求</div>
                    <ul class="MidNewsListContain">
                        <li><a href="#">萨凡吃过昆明受到各方沟通汇报给别人</a></li>
                        <li><a href="#">萨凡吃过昆明受到各方沟通汇报给别人</a></li>
                        <li><a href="#">萨凡吃过昆明受到各方沟通汇报给别人</a></li>
                        <li><a href="#">萨凡吃过昆明受到各方沟通汇报给别人</a></li>
                        <li><a href="#">萨凡吃过昆明受到各方沟通汇报给别人</a></li>
                        <li><a href="#">萨凡吃过昆明受到各方沟通汇报给别人</a></li>
                    </ul>
                </div>
                <div class="MidNewsList">
                    <div class="MidNewsListTitle">展会</div>
                        <ul class="MidNewsListContain">
                            <li><a href="#">萨凡吃过昆明受到各方沟通汇报给别人</a></li>
                            <li><a href="#">萨凡吃过昆明受到各方沟通汇报给别人</a></li>
                            <li><a href="#">萨凡吃过昆明受到各方沟通汇报给别人</a></li>
                            <li><a href="#">萨凡吃过昆明受到各方沟通汇报给别人</a></li>
                            <li><a href="#">萨凡吃过昆明受到各方沟通汇报给别人</a></li>
                            <li><a href="#">萨凡吃过昆明受到各方沟通汇报给别人</a></li>
                        </ul>
                </div>
        </div>
        <div class="row" style="font-size: 28px;font-weight: bold;justify-content: center;width: 100%;">
            文化创意产品
        </div>
        <div class="row" style="justify-content: center;">
            <div style="width: 1100px;">
                <div class="product">
                    <div class="productImg">
                        <img src="http://static.runoob.com/images/mix/img_fjords_wide.jpg">
                    </div>
                    <div class="productTitle"><a href="#">如果v</a></div>
                    <div class="productInfo">
                        发表v额你v让你帮忙开个宝马了什么v了打开v梅兰芳的地方免不了的什么vOK缅甸菲律宾们都
                    </div>
                </div>
                <div class="product">
                    <div class="productImg">
                        <img src="http://static.runoob.com/images/mix/img_fjords_wide.jpg">
                    </div>
                    <div class="productTitle"><a href="#">如果v</a></div>
                    <div class="productInfo">
                        发表v额你v让你帮忙开个宝马了什么v了打开v梅兰芳的地方免不了的什么vOK缅甸菲律宾们都
                    </div>
                </div>
                <div class="product">
                    <div class="productImg">
                        <img src="http://static.runoob.com/images/mix/img_fjords_wide.jpg">
                    </div>
                    <div class="productTitle"><a href="#">如果v</a></div>
                    <div class="productInfo">
                        发表v额你v让你帮忙开个宝马了什么v了打开v梅兰芳的地方免不了的什么vOK缅甸菲律宾们都发表v额你v让你帮忙开个宝马了什么v了打开v梅兰芳的地方免不了的什么vOK缅甸菲律宾们都
                    </div>
                </div>
            </div>
        </div>
    <jsp:include page="footer.jsp"/>
    </div>
</body>
</html>