<%--
  Created by IntelliJ IDEA.
  User: JY
  Date: 2018/12/12
  Time: 15:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<h1>登录界面</h1>
    <form action="login.action" method="POST">
        用户名:<input name="userId" type="text">
        密码:  <input name="password" type="text">
        <input type="submit" value="登录">
    </form>
</body>
</html>
