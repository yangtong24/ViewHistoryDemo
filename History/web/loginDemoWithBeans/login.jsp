<%--
  Created by IntelliJ IDEA.
  User: yangtong
  Date: 2017/7/9
  Time: 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
<img src="../images/1.png" alt="">
<form action="doLogin.jsp" method="post">
    <p>
        <label for="">用户名:</label>
        <input type="text" name="username" placeholder="请输入用户名" style="margin-right:200px;">
        <label for="">密码:</label>
        <input type="password" name="password">
    </p>
    <p>
        <input type="submit" value="登录" style="float: right;margin-right: 200px;">
    </p>
</form>
</body>
</html>
