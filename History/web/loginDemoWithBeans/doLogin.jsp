<%@ page import="Dao1.UserDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="loginUser" class="javaBeans.User" scope="page"/>
<jsp:useBean id="loginDao" class="Dao1.UserDao" scope="page"/>
<jsp:setProperty name="loginUser" property="*"/>
<%
    request.setCharacterEncoding("utf-8");
    if(loginDao.usersLogin(loginUser)){
        session.setAttribute("loginUser", loginUser.getUsername());
        //登录成功,请求转发
        request.getRequestDispatcher("loginSuccess.jsp").forward(request,response);
    }else{
        //请求重定向
        response.sendRedirect("loginFail.jsp");
    }
%>