<%--
  Created by IntelliJ IDEA.
  User: yangtong
  Date: 2017/7/10
  Time: 17:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>登录</h1>
<hr/>
<%--<form name="loginForm" action="doLoginBeans.jsp?myPassword=999999" method="post">--%>
<form name="loginForm" action="doLoginBeans.jsp" method="post">
    <table>
        <tr>
            <td>用户名:</td>
            <td><input type="text" name="username" value=""></td>
        </tr>
        <tr>
            <td>密码:</td>
            <td><input type="password" name="password" value=""></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="登录"></td>
        </tr>
    </table>
</form>
</body>
</html>
