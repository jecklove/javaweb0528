<%@page import="org.jgs1904.utils.CommonMapUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>测试页面3</title>
</head>
<body>
	
	<%
		application.setAttribute("name", "罗超");
		session.setAttribute("name", "罗超");
		request.setAttribute("name", "罗超");
		pageContext.setAttribute("name", "罗超");
		
		//request.getRequestDispatcher("test04.jsp").forward(request, response);
		
	%>
	
	<p>application：<%= application.getAttribute("name") %></p>
	<p>session：<%= session.getAttribute("name") %></p>
	<p>request：<%= request.getAttribute("name") %></p>
	<p>pageContext：<%= pageContext.getAttribute("name") %></p>
	
</body>
</html>