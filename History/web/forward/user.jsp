<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<h1>用户资料</h1>
<%
    request.setCharacterEncoding("utf-8");
    String username = "";
    String password = "";
    String email = "";
    if(request.getParameter("username") != null){
        username = request.getParameter("username");
    }
    if(request.getParameter("password") != null){
        password = request.getParameter("password");
    }
    if(request.getParameter("email") != null){
        email = request.getParameter("email");
    }
%>
用户名:<%=username%><br>
密码:<%=password%><br>
email:<%=email%><br>
</body>
</html>
