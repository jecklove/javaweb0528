<%@page import="org.jgs1904.service.UserService"%>
<%@page import="org.apache.commons.beanutils.BeanUtils"%>
<%@page import="org.jgs1904.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录处理页</title>
</head>
<body>
	
	<%
		User user = new User();
		BeanUtils.populate(user, request.getParameterMap());
		UserService userService = new UserService();
		User result = userService.login(user);
		
		if (result != null) {
			session.setAttribute("onlineUser", result);
			response.sendRedirect("/javaweb200528mvn/main.jsp");
		} else {
			session.setAttribute("message", "用户名或密码错误！");
			request.setAttribute("user", user);
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	%>
	
</body>
</html>