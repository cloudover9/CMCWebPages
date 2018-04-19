<%@ page language="java" import="controller.*, entity.*, interfaces.*,java.util.*"%>
<%@include file="verifyLogin.jsp"%>

<%
	//out.println("delete school : " + request.getParameter("SchoolName"));
	UserFuncController ufc = (UserFuncController)session.getAttribute("UserController");
	String schoolName = request.getParameter("SchoolName");
	ufc.removeSavedSchool(ufc.getUniversity(schoolName));
	response.sendRedirect("ManageSavedSchools.jsp");
%>