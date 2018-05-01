<%@ page language="java" import="controller.*, entity.*, interfaces.*,java.util.*"%>
<%@include file="verifyLogin.jsp"%>
<%
	AdminFuncController afc = (AdminFuncController)session.getAttribute("AdminController"); 
	Admin a = afc.getCurrentAdmin();
	int edit = afc.editUser(a,request.getParameter("FirstName"),request.getParameter("LastName"),request.getParameter("Password"), a.getActive(),'a');

	if(edit==-1){
		response.sendRedirect("EditAdmin.jsp?Error=-1");
	}
	else if(edit==-2){
		response.sendRedirect("EditAdmin.jsp?Error=-2");
	}
	else if(edit==-3){
		response.sendRedirect("EditAdmin.jsp?Error=-3");
	}
	else{
		response.sendRedirect("EditAdmin.jsp");
	}
%>