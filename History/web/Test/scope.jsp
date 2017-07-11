<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javaBeans.User" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>javabean的四个作用范围</h1>
application(全局)
session()
request(请求重定向不能保存之前的request对象，请求转发可以)
page(当前页面)
<hr/>
<jsp:useBean id="demo" class="javaBeans.User" scope="request"/>
用户名:<jsp:getProperty name="demo" property="username"/>
密码:<jsp:getProperty name="demo" property="password"/>
<br><br><br><br>

使用内置对象获取用户名和密码
<hr>
用户名:<%=((User)application.getAttribute("demo")).getUsername()%>
密码:<%=((User)application.getAttribute("demo")).getPassword()%>
<br><br><br><br>

<%--使用session获取用户名密码
<hr>
用户名:<%=((User)session.getAttribute("demo")).getUsername()%>
密码:<%=((User)session.getAttribute("demo")).getPassword()%>
<br><br><br><br>--%>


使用request获取用户名密码
<hr>
用户名:<%=((User)request.getAttribute("demo")).getUsername()%>
密码:<%=((User)request.getAttribute("demo")).getPassword()%>
</body>
</html>
