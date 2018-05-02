<%@ page language="java" import="controller.*, entity.*, interfaces.*,java.util.*"%>
<%@include file="verifyLogin.jsp"%>
<%
	AdminFuncController afc = (AdminFuncController)session.getAttribute("AdminController");
	String username = request.getParameter("Username");
	Account acc = afc.getAccount(username);
	int editUser = afc.editUser(acc, request.getParameter("FirstName"), request.getParameter("LastName"), 
			request.getParameter("Password"), request.getParameter("Status").charAt(0), request.getParameter("Type").charAt(0));
	if(editUser==-1){
		response.sendRedirect("EditAccount.jsp?Error=-1");
	}
	else if(editUser==-2){
		response.sendRedirect("EditAccount.jsp?Error=-2");
	}
	else if(editUser==-3){
		response.sendRedirect("EditAccount.jsp?Error=-3");
	}
	else{
		response.sendRedirect("EditAccount.jsp");
	}
%>