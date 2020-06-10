<%@page import="org.jgs1904.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>平台主页</title>
</head>
<body>
	
	<%
		User onlineUser = (User)session.getAttribute("onlineUser");
		// 登录判断
		if (onlineUser == null) {
			session.setAttribute("message", "请登陆后再访问！");
			response.sendRedirect("user/login.jsp");
			return;
		}
		
	%>
	
	<h1>平台主页</h1>
	<h3><%= onlineUser.getReal_name() %>，欢迎您！</h3>
	<h3><a href="user/logoutHandler.jsp">退出登录</a></h3>
	
</body>
</html>