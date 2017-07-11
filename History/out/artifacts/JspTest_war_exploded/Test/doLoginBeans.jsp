<%--
  Created by IntelliJ IDEA.
  User: yangtong
  Date: 2017/7/10
  Time: 17:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="demo" class="javaBeans.User" scope="request"/>
<h1>setProperty元素使用方法</h1>
<%--根据表单自动匹配所有的元素--%>
<%--<jsp:setProperty name="demo" property="*"/>--%>
<%--根据表单部分匹配--%>
<%--<jsp:setProperty name="demo" property="username"/>--%>
<%--与表单无关,通过手工赋值给属性
<jsp:setProperty name="demo" property="username" value="yangtong"/>
<jsp:setProperty name="demo" property="password" value="666666"/>--%>
<%--通过url传参，来给属性赋值--%>
<%--
<jsp:setProperty name="demo" property="username"/>
<jsp:setProperty name="demo"  property="password" param="myPassword"/>
使用传统的表达式获取
用户名:<%=demo.getUsername()%>
密码:<%=demo.getPassword()%>
--%>
<jsp:setProperty name="demo" property="username"/>
<jsp:setProperty name="demo"  property="password" />
用户名:<jsp:getProperty name="demo" property="username"/>
密码:<jsp:getProperty name="demo" property="password"/>
<%--<a href="scope.jsp">javabean的四个作用范围</a>--%>
<%
    request.getRequestDispatcher("scope.jsp").forward(request,response);
%>
</body>
</html>
