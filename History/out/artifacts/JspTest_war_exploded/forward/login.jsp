<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<h1>用户登录</h1>
<hr>

<%--<form action="do_login.jsp" method="post">--%>
<form action="param_login.jsp" method="post">
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
