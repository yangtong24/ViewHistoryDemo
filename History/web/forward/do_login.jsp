<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login success</title>
</head>
<body>
<h1>forward动作</h1>
<hr>
<%--<jsp:forward page="user.jsp"/>--%>
和服务器转发一样的
<%
    request.getRequestDispatcher("user.jsp").forward(request,response);
%>
</body>
</html>
