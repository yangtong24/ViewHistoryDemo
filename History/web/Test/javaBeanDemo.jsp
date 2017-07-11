<%--
  Created by IntelliJ IDEA.
  User: yangtong
  Date: 2017/7/9
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javaBeans.User" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>使用普通方法创建javaBeans实例</h1>
<%
    User user = new User();
    user.setUsername("admin");
    user.setPassword("root");
%>
用户名:<%=user.getUsername()%><br>
密码:<%=user.getPassword()%>
</body>
</html>
