<%@ page language="java" import="controller.*, entity.*, interfaces.*,java.util.*"%>
<%@include file="verifyLogin.jsp"%>
<%
	AdminFuncController afc = (AdminFuncController)session.getAttribute("AdminController");
	String username = request.getParameter("Username");	
	Account acc = afc.getAccount(username);
	int add = afc.addAccount(request.getParameter("Username"), request.getParameter("Password"), 
			request.getParameter("FirstName"), request.getParameter("LastName"), request.getParameter("Type"));
	if(add==-1){
		response.sendRedirect("AdminHomepage.jsp&Error=-1");
	}
	else if(add==-2){
		response.sendRedirect("AdminHomepage.jsp&Error=-2");
	}
	else{
		response.sendRedirect("AdminHomepage.jsp");
	}
%>