<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>I退出登录处理页</title>
</head>
<body>
	
	<%
		session.invalidate(); // session失效
		response.sendRedirect("login.jsp");
	%>
	
</body>
</html>