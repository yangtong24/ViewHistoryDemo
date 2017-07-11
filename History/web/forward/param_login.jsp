<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login success</title>
</head>
<body>
<h1>forward动作</h1>
<hr>
<jsp:forward page="user.jsp">
    <jsp:param name="password" value="88888888"/>
    <jsp:param name="email" value="321523@qq.com"  />
</jsp:forward>
</body>
</html>
