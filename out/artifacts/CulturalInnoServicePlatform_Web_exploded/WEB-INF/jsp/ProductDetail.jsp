<%--
  Created by IntelliJ IDEA.
  User: user0
  Date: 2018/12/14
  Time: 18:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>文化创意中心</title>
    <link rel="stylesheet"
          href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script
            src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script
            src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>

</head>


<style>
    * {
        margin: 0;
        padding: 0%;
    }

    html, body {
        width: 100%;
        height: 100%
    }
    .log{
        height: 100px;

        overflow: hidden;
    }
    .top {
        width: 100%;
    }

    .bottom {
        margin-left: 290px;
        width: 54%;
        height: 90%;
    }

    .product {
        width: 300px;
        height: 420px;
        margin-left: 40px;
        display: inline-block;
        overflow: hidden;
    }

    .proDetails {
        width: 100%;
        height: 500px;
        margin-top: 30px;
        /*	background-color: grey;*/
        display: block;
        overflow: hidden;
    }

    .proTitle {
        margin-top: 15px;
        width: 100%;
        font-size: 20px;
    }

    .proHitsandSellcount {
        margin-top: 30px;
        width: 100%;
        color: grey;
        font-size: 13px;
        height: 30px;
    }

    .proHits {
        float: left;
        margin-left: 10px;
    }

    .proSellcount {
        float: right;
        margin-right: 50px;
    }

    .proPrice {
        margin-top: 30px;
        margin-left: 10px;
        margin-bottom: 100px;
        width: 100%;
        color: red;
        font-size: 30px;
        height: 50px;
    }

    .proButton {
        margin-top: 28px;
        margin-left: 30px;
        width: 100%;
        height: 25px;
    }

    .proInfo {
        width: 100%;
        height: 25px;
    }




    .comments {
        width: 100%;
        height: 30px;
        border: 2px;
        display: inline;
        margin-top: 10px;
    }
    .commentinfo {
        border-bottom:1px solid #eee;
    }


</style>


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
                        <a class="dropdown-item" href="#">书法</a>
                        <a class="dropdown-item" href="#">绘画</a>
                        <a class="dropdown-item" href="#">乐器</a>
                        <a class="dropdown-item" href="#">文化服饰</a>
                    </div>
                </li>
            </ul>
        </nav>
    </div>



    <div class="top">
        <div class="row" style="margin-top: 5px; justify-content: center;">
            <div id="demo" class="carousel slide" data-ride="carousel"
                 style="width: 380px; display: inline-block; margin-top: 45px;margin-right: 10px;">

                <!-- 轮播图片 -->
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="http://static.runoob.com/images/mix/img_fjords_wide.jpg">
                    </div>
                    <div class="carousel-item">
                        <img src="http://static.runoob.com/images/mix/img_nature_wide.jpg">
                    </div>
                    <div class="carousel-item">
                        <img
                                src="http://static.runoob.com/images/mix/img_mountains_wide.jpg">
                    </div>
                </div>

                <!-- 左右切换按钮 -->
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a> <a class="carousel-control-next" href="#demo" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>

            </div>
            <div class="product">

                <div class="proDetails">
                    <div class="proTitle">${product.proName}</div>
                    <div class="proPrice">¥${product.price}</div>

                    <div class="proHitsandSellcount">
                        <div class="proHits">浏览量：${product.hits}</div>
                        <div class="proSellcount">月销量：${product.info}</div>
                    </div>

                    <div class="proButton" role="group" aria-label="Basic example">
                        <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#myModal">立即购买</button>
                        <button type="button" class="btn btn-danger">收藏</button>
                    </div>



                </div>
            </div>
        </div>

    </div>



    <div class="bottom">
        <nav>
            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                <a
                        class="nav-item nav-link active" id="nav-home-tab"
                        data-toggle="tab" href="#nav-home" role="tab"
                        aria-controls="nav-home" aria-selected="true">
                    详情
                </a>
                <a
                        class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab"
                        href="#nav-profile" role="tab" aria-controls="nav-profile"
                        aria-selected="false">
                    评论
                </a>
            </div>
        </nav>
        <div class="tab-content" id="nav-tabContent">

            <!-- 产品详情  -->
            <div class="tab-pane fade show active" id="nav-home" role="tabpanel"
                 aria-labelledby="nav-home-tab"><br>
                品牌名称：重回汉唐<br>
                产品参数：<br>
                品牌: 重回汉唐<br>
                材质: 涤纶<br>
                尺码: 155 160 165 170 150<br>
                颜色分类: 红色长袄 现货 红色长袄 预售12月下旬发货 白色长袄 现货 白色长袄 预售12月下旬发货 黑色马面裙 现货 黑色马面裙 预售12月下旬发货 红色马面裙 现货 红色马面裙预售12月下旬发货
                <br>货号: HFAY2074<br>
                上市年份季节: 2018年春季<br>
                材质成分: 聚对苯二甲酸乙二酯(涤纶)9
                <div class="commentinfo" style="margin-top: 20px;margin-bottom: 10px;"></div>
                <h3>商品介绍</h3>
            </div>

            <!-- 产品评论  -->
            <div class="tab-pane fade" id="nav-profile" role="tabpanel"
                 aria-labelledby="nav-profile-tab"><br>


                <div class="commentinfo">
                    <h5 class="mt-0">用户1</h5>
                    <p>好看啊啊啊！！！加上我的小斗篷！就是可爱的大明少女啦！</p>
                </div>

                <div class="commentinfo">
                    <h5 class="mt-0">用户2</h5>
                    <p>挺好看的，质量非常好。先在他家的实体店试了后再在网上买的，没失望，很美。</p>
                </div>

                <div class="commentinfo">
                    <h5 class="mt-0">用户3</h5>
                    <p>好看，就是居然连盒子都没有，飘了飘了</p>
                </div>


                <div class="commentinfo">
                    <h5 class="mt-0">用户4</h5>
                    <p>挺好看的，质量非常好。先在他家的实体店试了后再在网上买的，没失望，很美。</p>
                </div>


                <div class="commentinfo">
                    <h5 class="mt-0">用户5</h5>
                    <p>挺好看的，质量非常好。先在他家的实体店试了后再在网上买的，没失望，很美。</p>
                </div>


                <div class="commentinfo">
                    <h5 class="mt-0">用户6</h5>
                    <p>挺好看的，质量非常好。先在他家的实体店试了后再在网上买的，没失望，很美。</p>
                </div>

            </div>
        </div>

    </div>


    <!-- 模态框 -->
    <div class="modal fade" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content" style="width:700px;margin-left: -120px;">

                <!-- 模态框头部 -->
                <div class="modal-header">
                    <h4 class="modal-title">购买页面</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- 模态框主体 -->
                <div class="modal-body">
                    <img src="http://static.runoob.com/images/mix/img_avatar.png" style="width:400px;height: 400px;">
                    <div class="input-group mb-3" style="width: 200px;margin-top: 120px;float: right;margin-right: 20px;">
                        <div class="input-group-prepend">
                            <span class="input-group-text">购买数量：</span>
                        </div>
                        <input type="text" class="form-control" placeholder="1" name="purchasenum">
                    </div>
                    <h3 style="display: inline-block;margin-top: 20px;float: right;margin-right: 30px;">总价：188</h3>
                </div>

                <!-- 模态框底部 -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">提交</button>
                </div>

            </div>
        </div>
    </div>

    <div class="row" style="text-align: left;background-color: black;color: white;margin-top: 40px;justify-content: center;">
        <div style="padding: 50px;padding-left: 80px;padding-right: 150px">Designed and built with all the love in the world by @mdo and @fat. Maintained by the core team with the help of our contributors.
            本项目源码受 MIT开源协议保护，文档受 CC BY 3.0 开源协议保护。</div>
    </div>
</div>
</body>
</html>