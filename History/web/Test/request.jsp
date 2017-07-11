<%--
  Created by IntelliJ IDEA.
  User: yangtong
  Date: 2017/7/8
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<h1>request对象</h1>
<%
    request.setCharacterEncoding("utf-8");//设置字符编码,防止中文乱码,但是对url参数无效需要修改tomcat配置文件
    request.setAttribute("password",123456);
%>
用户名:<%=request.getParameter("username")%>
爱好:<%
    if(request.getParameterValues("hobby") != null) {
        String[] hobby = request.getParameterValues("hobby");
        for (String s : hobby) {
            out.println(s + "  ");
        }
    }
%>
密码:<%=request.getAttribute("password")%>
请求体的MIME类型<%=request.getContentType()%>
协议类型及版本号<%=request.getProtocol()%>
服务器主机名<%=request.getServerName()%>
端口号<%=request.getServerPort()%>
ip地址<%=request.getRemoteAddr()%>
<body>
</body>
</html>
