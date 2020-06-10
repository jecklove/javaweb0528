<%@page import="org.jgs1904.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录页面</title>
</head>
<body>
	<%
		User user = (User)request.getAttribute("user");
		if (user == null) {
			user = (User)session.getAttribute("user");
		}
	%>
	<h3>登录页面</h3>
	<form action="loginHandler.jsp" method="post">
		<p>用户名：<input type="text" name="username" value="<%= user == null ? "" : user.getUsername() %>"></p>
		<p>密码：<input type="password" name="password"></p>
		<p><input type="submit" value="登录"></p>
		<p><a href="regist.jsp">没有账号？立即注册！</a></p>
		<%
			String message = (String)session.getAttribute("message");
			session.removeAttribute("message");
		%>
		<p style="color:red;"><%= message == null ? "" : message %></p>
	</form>

</body>
</html>