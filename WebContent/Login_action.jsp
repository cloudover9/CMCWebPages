<%@ page language="java" import="controller.*, entity.*, interfaces.*"%>
<%
	String username = request.getParameter("Username");
	String password = request.getParameter("Password");
	AccountController acc = new AccountController();
	session.setAttribute("AccountController", acc);
	int loginStatus = acc.login(username, password);
	
	if(loginStatus==3){
		response.sendRedirect("Login2.jsp?Error=-1");
	}
	else if(loginStatus==4){
		response.sendRedirect("Login2.jsp?Error=-2");
	}
	else if(loginStatus==5){
		response.sendRedirect("Login2.jsp?Error=-3");
	}
	else if(loginStatus==6){
		response.sendRedirect("Login2.jsp?Error=-4");
	}
// 	else if(loginStatus==7){
// 		response.sendRedirect("Login.jsp?Error=-5");
// 	}
	else if(loginStatus==1){
		session.setAttribute("AdminController", new AdminFuncController(username));
		response.sendRedirect("AdminHomepage2.jsp");
	}
	else if(loginStatus==2){
		session.setAttribute("UserController", new UserFuncController(username));
		response.sendRedirect("GeneralUserHomepage.jsp");
	}
	
%>