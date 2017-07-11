<%@ page import="java.net.URLEncoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功</title>
</head>
<body>
<h1>登录成功</h1>
<hr>

<%
    request.setCharacterEncoding("utf-8");
    String[] isSetCookies = request.getParameterValues("isUseCookie");
    if(isSetCookies != null && isSetCookies.length > 0 ){//勾选记住密码
        String username = URLEncoder.encode( request.getParameter("username"),"utf-8");
        String password = URLEncoder.encode( request.getParameter("password"),"utf-8");
        Cookie usernameCookie = new Cookie("username", username);
        Cookie passwordCookie = new Cookie("password", password);
        usernameCookie.setMaxAge(3600);//设置最大时间
        passwordCookie.setMaxAge(3600);
        response.addCookie(usernameCookie);
        response.addCookie(passwordCookie);
    }else{
        Cookie[] cookies = request.getCookies();
        if(cookies != null && cookies.length > 0){
            for (Cookie c : cookies) {
                if(c.getName().equals("username") || c.getName().equals("password")){
                    c.setMaxAge(0);
                    response.addCookie(c);
                }
            }
        }
    }
%>

<a href="user.jsp" target="_blank">查看用户信息</a>
</body>
</html>
