<%--
  Created by IntelliJ IDEA.
  User: yangtong
  Date: 2017/7/9
  Time: 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    String username = "";
    String password = "";
    username = request.getParameter("username");
    password = request.getParameter("password");
    if("admin".equals(username) && "admin".equals(password)){
        session.setAttribute("loginUser", username);
        //登录成功,请求转发
        request.getRequestDispatcher("loginSuccess.jsp").forward(request,response);
    }else{
        //请求重定向
        response.sendRedirect("loginFail.jsp");
    }
%>