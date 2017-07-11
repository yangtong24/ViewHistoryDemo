<%@ page import="java.net.URLDecoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<h1>用户登录</h1>
<hr>
<%
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
<form action="doLogin.jsp" method="post">
    <table>
        <tr>
            <td>用户名:</td>
            <td><input type="text" name="username" value="<%=username%>"></td>
        </tr>
        <tr>
            <td>密码:</td>
            <td><input type="password" name="password" value="<%=password%>"></td>
            <td><input type="checkbox" value="" name="isUseCookie" checked="checked">记住登录</td>
        </tr>
        <tr>
            <td><input type="submit" value="提交"></td>
            <td><input type="reset" value="取消"></td>
        </tr>
    </table>
</form>
</body>
</html>
