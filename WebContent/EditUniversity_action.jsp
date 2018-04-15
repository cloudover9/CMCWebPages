<%@ page language="java" import="controller.*, entity.*, interfaces.*,java.util.*"%>
<%
	AdminFuncController afc = (AdminFuncController)session.getAttribute("AdminController");
	ArrayList<String> emphases = new ArrayList<String>();
	// set up the emphases
	if(request.getParameter("Emphasis1").length()!=0){
		emphases.add(request.getParameter("Emphasis1"));
	}
	if(request.getParameter("Emphasis2").length()!=0){
		emphases.add(request.getParameter("Emphasis2"));
	}
	if(request.getParameter("Emphasis3").length()!=0){
		emphases.add(request.getParameter("Emphasis3"));
	}
	if(request.getParameter("Emphasis4").length()!=0){
		emphases.add(request.getParameter("Emphasis4"));
	}
	if(request.getParameter("Emphasis5").length()!=0){
		emphases.add(request.getParameter("Emphasis5"));
	}
	// check for any empty inputs
	if(request.getParameter("State").length()==0 || request.getParameter("Location").length()==0 || request.getParameter("Control").length()==0
	|| request.getParameter("Students").length()==0 || request.getParameter("FemPerc").length()==0 || request.getParameter("SatV").length()==0
	|| request.getParameter("SatM").length()==0 || request.getParameter("Cost").length()==0 || request.getParameter("Cost").length()==0
	|| request.getParameter("FinAidPerc").length()==0 || request.getParameter("Applicants").length()==0 || request.getParameter("Admitted").length()==0
	|| request.getParameter("Enrolled").length()==0 || request.getParameter("AcadScale").length()==0 || request.getParameter("SocScale").length()==0
	|| request.getParameter("QualScale").length()==0){
		response.sendRedirect("AdminHomepage.jsp?Error=-5");
	}
	int editUniv = afc.editUniversity(request.getParameter("SchoolName"), request.getParameter("State"), request.getParameter("Location"), 
			request.getParameter("Control"), Integer.parseInt(request.getParameter("Students")),
			Integer.parseInt(request.getParameter("FemPerc")), Integer.parseInt(request.getParameter("SatV")), 
			Integer.parseInt(request.getParameter("SatM")), Integer.parseInt(request.getParameter("Cost")), 
			Integer.parseInt(request.getParameter("FinAidPerc")), Integer.parseInt(request.getParameter("Applicants")), 
			Integer.parseInt(request.getParameter("Admitted")), Integer.parseInt(request.getParameter("Enrolled")),
			Integer.parseInt(request.getParameter("AcadScale")), Integer.parseInt(request.getParameter("SocScale")), 
			Integer.parseInt(request.getParameter("QualScale")), emphases);
	// check if the method edited the university
	if(editUniv == -1){
		response.sendRedirect("AdminHomepage.jsp?Error=-1");
	}
	else if(editUniv == -2){
		response.sendRedirect("AdminHomepage.jsp?Error=-2");
	}
	else if(editUniv == -3){
		response.sendRedirect("AdminHomepage.jsp?Error=-3");
	}
	else if(editUniv == -4){
		response.sendRedirect("AdminHomepage.jsp?Error=-4");
	}
	else{
		response.sendRedirect("AdminHomepage.jsp");
	}
	
%>