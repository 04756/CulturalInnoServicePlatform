<%--
  Created by IntelliJ IDEA.
  User: JY
  Date: 2018/12/16
  Time: 22:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html lang="en-US">

<head>
    <meta charset="UTF-8">
    <title>ueditor demo</title>
</head>

<body>
<!-- 加载编辑器的容器 -->
<script id="container" name="content" type="text/plain">
        这里写你的初始化内容
    </script>
<!-- 配置文件 -->
<script type="text/javascript" src="js/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="js/ueditor.all.js"></script>

<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>

<!-- 实例化编辑器 -->
<script type="text/javascript">
    var ue = UE.getEditor('container');
    ue.ready(function() {
        //设置编辑器的内容
        ue.setContent('hello');

        //获取纯文本内容，返回: hello
        var txt = ue.getContentTxt();
    });
    $(document).ready(function(){
        $("#publish").click(function(){
            //获取html内容，返回: <p>hello</p>
            var html = ue.getContent();
            alert(html);
        });
    });
</script>
<style type="text/css">
    #container{
        margin-top:100px;
        margin-left: 150px;
    }
</style>
</body>
</html>