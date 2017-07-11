<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: yangtong
  Date: 2017/7/8
  Time: 21:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>session</title>
</head>
<body>
<h1>session内置对象</h1>
<br>
<%
    request.setCharacterEncoding("utf-8");
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
    Date d = new Date(session.getCreationTime());
    session.setAttribute("username","admin");
    session.setAttribute("password","123456");
    session.setAttribute("age","24");
    //设置session当前最大生存期限(秒
    //session.setMaxInactiveInterval(10);//10秒钟
%>
session创建时间:<%=sdf.format(d)%><br>
session的ID编号:<%=session.getId()%><br>
从session中取出用户名:<%=session.getAttribute("username")%><br>
<%
     // session.invalidate();//销毁当前会话
%>
<a href="session2.jsp" target="_blank">跳转到session2.jsp页面</a>

</body>
</html>
