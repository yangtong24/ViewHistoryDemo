<%--
  Created by IntelliJ IDEA.
  User: yangtong
  Date: 2017/7/9
  Time: 11:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="exception.jsp" %>
<html>
<head>
    <title>exception</title>
</head>
<body>
<h1>exception内置对象</h1>
<%--交给exception.jsp处理--%>
<%
    out.println(100 / 0);
%>
</body>
</html>
