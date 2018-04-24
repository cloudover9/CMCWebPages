<%@ page language="java" import="controller.*, entity.*, interfaces.*,java.util.*"%>
<%@include file="verifyLogin.jsp"%>
<%
	String schoolName = request.getParameter("SchoolName");
	UserFuncController ufc = (UserFuncController)session.getAttribute("UserController");
	ufc.saveToSavedSchoolList(ufc.getUniversity(schoolName));
	response.sendRedirect("ManageSavedSchools2.jsp");
%>