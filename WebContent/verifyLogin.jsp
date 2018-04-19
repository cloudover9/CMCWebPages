<%@ page language="java" import="controller.*, entity.*, interfaces.*"%>
<%
if((AdminFuncController)session.getAttribute("AdminController")==null || 
(UserFuncController)session.getAttribute("UserController")==null){
	response.sendRedirect("Login.jsp?Error=-6");
	return;
}
else {
	AccountController anAccountVerification = new AccountController();
	if(anAccountVerification.isLoggedIn()==false){
		response.sendRedirect("Login.jsp?Error=-6");
		return;
	}
}
%>