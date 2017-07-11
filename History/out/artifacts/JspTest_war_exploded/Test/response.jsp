<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: yangtong
  Date: 2017/7/8
  Time: 20:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    response.setContentType("text/html;charset=utf-8");
    out.println("<h1>response内置对象</h1>");
    out.println("<hr/>");
    //out.flush();//清空缓冲区,把缓冲区的内容写到浏览器上
    PrintWriter outer = response.getWriter();//获得输出流对象
    outer.println("大家好,我是response对象生成的输出流outer对象");
    //response.sendRedirect("request.jsp");//请求重定向
    request.getRequestDispatcher("request.jsp").forward(request,response);
%>
