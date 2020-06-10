<%@page import="org.jgs1904.utils.CommonMapUtil"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>测试页面1</title>
</head>
<body>

	<!-- 在jsp使用map存放key::value形式的数据 -->
	<%
		CommonMapUtil.map.put("username", "luochao");
	%>


</body>
</html>