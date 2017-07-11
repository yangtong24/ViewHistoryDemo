<%@ page import="java.util.Enumeration" %>
<%@ page contentType="text/html; charset=utf-8" language="java"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>生命周期</title>
</head>
<body>
<h1>application内置对象</h1>
<%
    application.setAttribute("city","wuhu");
    application.setAttribute("postcode","241000");
    application.setAttribute("name","yangtong");
%>
城市:<%=application.getAttribute("city")%><br>
application中的属性有:
<%
    Enumeration attributes = application.getAttributeNames();
    while(attributes.hasMoreElements()){
        out.println(attributes.nextElement() + "&nbsp;&nbsp;");
    }
%><br>
servlet(jsp)引擎及版本号:<%=application.getServerInfo()%>
</body>
</html>