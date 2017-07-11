<%--
  Created by IntelliJ IDEA.
  User: yangtong
  Date: 2017/7/8
  Time: 16:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title></title>
</head>
<body>
<h1>注册</h1>
<form action="response.jsp" method="post">
    <table>
        <tr>
            <td>用户名</td>
            <td><input type="text" name="username"></td>
        </tr>
        <tr>
            <td>爱好:</td>
            <td>
                <input type="checkbox" name="hobby" value="reading">读书
                <input type="checkbox" name="hobby" value="shopping">购物
                <input type="checkbox" name="hobby" value="fishing">钓鱼
                <input type="checkbox" name="hobby" value="music">音乐
            </td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="提交"></td>
        </tr>
    </table>
</form>
<br>
<br>
<%--<a href="request.jsp?username=haha">测试url传参数</a>--%>
<a href="request.jsp?username=小伟">测试url传参数</a>
</body>
</html>
