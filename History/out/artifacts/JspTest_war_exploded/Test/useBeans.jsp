<%--
  Created by IntelliJ IDEA.
  User: yangtong
  Date: 2017/7/10
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="bean" class="javaBeans.User" scope="page"/>
<h1>使用useBeans创建javabeans实例</h1>
用户名:<%=bean.getUsername()%>
密码:<%=bean.getPassword()%>
</body>
</html>
