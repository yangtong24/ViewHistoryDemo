<%@ page import="java.net.URLDecoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>用户信息</h1>
<%
    request.setCharacterEncoding("utf-8");
    String username = "";
    String password = "";
    Cookie[] cookies = request.getCookies();
    if(cookies != null && cookies.length > 0){
        for (Cookie c : cookies) {
            if(c.getName().equals("username")){
                username = URLDecoder.decode(c.getValue(),"utf-8");
            }
            if(c.getName().equals("password")){
                password = URLDecoder.decode(c.getValue(), "utf-8");
            }
        }
    }
%>
用户名:<%=username%><br>
密码:<%=password%>
</body>
</html>
