<%@page import="org.jgs1904.utils.CommonMapUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>测试页面4</title>
</head>
<body>
	
	<p>application：<%= application.getAttribute("name") %></p>
	<p>session：<%= session.getAttribute("name") %></p>
	<p>request：<%= request.getAttribute("name") %></p>
	<p>pageContext：<%= pageContext.getAttribute("name") %></p>
	
</body>
</html>