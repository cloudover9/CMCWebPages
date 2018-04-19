<%@ page language="java" import="controller.*, entity.*, interfaces.*,java.util.*"%>
<%@include file="verifyLogin.jsp"%>
<%
	UserFuncController ufc = (UserFuncController)session.getAttribute("UserController"); 
	GeneralUser gu = ufc.getCurrentGeneralUser();
	int edit = ufc.editProfile(gu,request.getParameter("FirstName"),request.getParameter("LastName"),request.getParameter("Password"));

	if(edit==-1){
		response.sendRedirect("EditUser.jsp?Error=-1");
	}
	else if(edit==-2){
		response.sendRedirect("EditUser.jsp?Error=-2");
	}
	else if(edit==-3){
		response.sendRedirect("EditUser.jsp?Error=-3");
	}
	else{
		response.sendRedirect("EditUser.jsp");
	}
%>