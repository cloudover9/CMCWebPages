<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

<%@ page language="java" import="controller.*, entity.*, interfaces.*"%>
<%
	AccountController ac = (AccountController)session.getAttribute("AccountController");
	response.sendRedirect("Login2.jsp");
	boolean logoutValue = ac.logout();
%>

</body>
</html>

