<%@page import="org.jgs1904.utils.CommonMapUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>测试页面2</title>
</head>
<body>
	
	<%
		String username = (String)CommonMapUtil.map.get("username");
		out.write(username);
	%>
	
</body>
</html>