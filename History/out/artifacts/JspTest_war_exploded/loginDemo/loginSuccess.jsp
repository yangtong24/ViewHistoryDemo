<%--
  Created by IntelliJ IDEA.
  User: yangtong
  Date: 2017/7/9
  Time: 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
<img src="../images/1.png" alt="">
<%
    String loginUser = "";
    if(session.getAttribute("loginUser") != null){
        loginUser = session.getAttribute("loginUser").toString();
    }
%>
恭喜您<font color="red"><%=session.getAttribute("loginUser")%></font>登录成功
</body>
</html>
