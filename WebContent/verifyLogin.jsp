<%@ page language="java" import="controller.*, entity.*, interfaces.*"%>
<%
if((AdminFuncController)session.getAttribute("AdminController")==null && 
(UserFuncController)session.getAttribute("UserController")==null){
	response.sendRedirect("Login2.jsp?Error=-6");
	System.out.println("Error is nullpointer");
	return;
}
else {
	AccountController accVerification = (AccountController)session.getAttribute("AccountController");
	if(accVerification.isLoggedIn()==false){
		response.sendRedirect("Login2.jsp?Error=-6");
		System.out.println(accVerification.isLoggedIn());
		return;
	}
}
%>