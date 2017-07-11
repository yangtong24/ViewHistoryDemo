<%@ page contentType="text/html; charset=utf-8" language="java"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
session的ID编号:<%=session.getId()%><br>
<%=session.getAttribute("username")%><br>
session保存的数组有:<%
    String[] names = session.getValueNames();
    for (String name : names) {
        out.println(name + "&nbsp;&nbsp");
    }

%>
</body>
</html>