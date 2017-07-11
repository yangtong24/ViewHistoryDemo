<%--
  Created by IntelliJ IDEA.
  User: yangtong
  Date: 2017/7/9
  Time: 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pageContext</title>
</head>
<body>
<h1>pageContext内置对象</h1>
用户名是<%=pageContext.getSession().getAttribute("username")%><br>
<%
    //pageContext.forward("index.jsp");//跳转到注册页面,地址栏的url并没有发生变化
    pageContext.include("include.jsp");
%>
</body>
</html>
