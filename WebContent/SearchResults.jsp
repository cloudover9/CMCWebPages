<%@ page language="java" import="controller.*, entity.*, interfaces.*,java.util.*"%>
<%@include file="verifyLogin.jsp"%>
<%@include file= "TranslateFeature.jsp" %>
<html>
<head>
<%@include file= "GeneralUserMenu2.jsp" %>
<%@include file= "GeneralUserMenu.jsp" %>
  <title>SearchResults</title>
</head>
<style>


#myBtn {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 30px;
  z-index: 99;
  font-size: 18px;
  border: none;
  outline: none;
  background-color: red;
  color: white;
  cursor: pointer;
  padding: 15px;
  border-radius: 4px;
}

#myBtn:hover {
  background-color: #555;
}
</style>
<%
	//set up the controllers
	UserFuncController ufc = (UserFuncController)session.getAttribute("UserController"); 
	SearchController sc = new SearchController();
	
	//check for errors if anything is empty
	String schoolName = request.getParameter("SchoolName");
	String state = request.getParameter("State");
	String location = request.getParameter("Location");
	String control = request.getParameter("Control");
	if(request.getParameter("Students1").length()==0 || request.getParameter("Students2").length()==0 ||
	   request.getParameter("FemPerc1").length()==0 || request.getParameter("FemPerc2").length()==0 ||
	   request.getParameter("SatV1").length()==0 || request.getParameter("SatV2").length()==0 ||
	   request.getParameter("SatM1").length()==0 || request.getParameter("SatM2").length()==0 ||
	   request.getParameter("Cost1").length()==0 || request.getParameter("Cost2").length()==0 ||
	   request.getParameter("FinAidPerc1").length()==0 || request.getParameter("FinAidPerc2").length()==0 ||
	   request.getParameter("Applicants1").length()==0 || request.getParameter("Applicants2").length()==0 ||
	   request.getParameter("Admitted1").length()==0 || request.getParameter("Admitted2").length()==0 ||
	   request.getParameter("Enrolled1").length()==0 || request.getParameter("Enrolled2").length()==0 ||
	   request.getParameter("AcadScale1").length()==0 || request.getParameter("AcadScale2").length()==0 ||
	   request.getParameter("SocScale1").length()==0 || request.getParameter("SocScale2").length()==0 ||
	   request.getParameter("QualScale1").length()==0 || request.getParameter("QualScale2").length()==0){
			response.sendRedirect("SearchMenu.jsp?Error=-1");
			return;
	}
	
	int students1=-1;
	int students2=0;
	int femPerc1=-1;
	int femPerc2=0;
	int satV1=-1;
	int satV2=0;
	int satM1=-1;
	int satM2=0;
	int cost1=-1;
	int cost2=0;
	int finAidPerc1=-1;
	int finAidPerc2=0;
	int applicants1=-1;
	int applicants2=0;
	int admitted1=-1;
	int admitted2=0;
	int enrolled1=-1;
	int enrolled2=0;
	int acadScale1=-1;
	int acadScale2=0;
	int socScale1=-1;
	int socScale2=0;
	int qualScale1=-1;
	int qualScale2=0;
	//set the inputs from the user
	try{
		students1 = Integer.parseInt(request.getParameter("Students1"));
		students2 = Integer.parseInt(request.getParameter("Students2"));
	    femPerc1 = Integer.parseInt(request.getParameter("FemPerc1"));
		femPerc2 = Integer.parseInt(request.getParameter("FemPerc2"));
		satV1 = Integer.parseInt(request.getParameter("SatV1"));
		satV2 = Integer.parseInt(request.getParameter("SatV2"));
		satM1 = Integer.parseInt(request.getParameter("SatM1"));
		satM2 = Integer.parseInt(request.getParameter("SatM2"));
		cost1 = Integer.parseInt(request.getParameter("Cost1"));
		cost2 = Integer.parseInt(request.getParameter("Cost2"));
		finAidPerc1 = Integer.parseInt(request.getParameter("FinAidPerc1"));
		finAidPerc2 = Integer.parseInt(request.getParameter("FinAidPerc2"));
		applicants1 = Integer.parseInt(request.getParameter("Applicants1"));
		applicants2 = Integer.parseInt(request.getParameter("Applicants2"));
		admitted1 = Integer.parseInt(request.getParameter("Admitted1"));
		admitted2 = Integer.parseInt(request.getParameter("Admitted2"));
		enrolled1 = Integer.parseInt(request.getParameter("Enrolled1"));
		enrolled2 = Integer.parseInt(request.getParameter("Enrolled2"));
		acadScale1 = Integer.parseInt(request.getParameter("AcadScale1"));
		acadScale2 = Integer.parseInt(request.getParameter("AcadScale2"));
		socScale1 = Integer.parseInt(request.getParameter("SocScale1"));
		socScale2 = Integer.parseInt(request.getParameter("SocScale2"));
		qualScale1 = Integer.parseInt(request.getParameter("QualScale1"));
		qualScale2 = Integer.parseInt(request.getParameter("QualScale2"));
	}
	catch(NumberFormatException nfe){
		response.sendRedirect("SearchMenu.jsp?Error=-6");
	}
	//get the emphases set
	ArrayList<String> emphases = new ArrayList<String>();
	if(request.getParameter("Emphases1").length()!=0){
		emphases.add(request.getParameter("Emphases1"));
	}
	if(request.getParameter("Emphases2").length()!=0){
		emphases.add(request.getParameter("Emphases2"));
	}
	if(request.getParameter("Emphases3").length()!=0){
		emphases.add(request.getParameter("Emphases3"));
	}
	if(request.getParameter("Emphases4").length()!=0){
		emphases.add(request.getParameter("Emphases4"));
	}
	if(request.getParameter("Emphases5").length()!=0){
		emphases.add(request.getParameter("Emphases5"));
	}
	
	//CHECK FOR ERRORS, RETURN NULL IF THERE IS AN ERROR
	  // the low variables are negative
	  if(students1<0 || femPerc1<0 || satV1<0 || satM1<0 || cost1<0 || finAidPerc1<0 || applicants1<0 || admitted1<0 || enrolled1<0
			  || acadScale1<0 || socScale1<0|| qualScale1<0) {
		  response.sendRedirect("SearchMenu.jsp?Error=-2");
	  }
	  // the high variables are less than the low variables
	  if(students2<students1 || femPerc2<femPerc1 || satV2<satV1 || satM2<satM1 || cost2<cost1 || finAidPerc2<finAidPerc1
			  || applicants2<applicants1 || admitted2<admitted1 || enrolled2<enrolled1 || acadScale2<acadScale1 ||
			  socScale2<socScale1 || qualScale2<qualScale1) {
		  response.sendRedirect("SearchMenu.jsp?Error=-3");
	  }
	  // the high variables are greater than their assigned limit
	  if( femPerc2>100 || satV2>800 || satM2>800 || finAidPerc2>100
			  || admitted2>100 || enrolled2>100 || acadScale2>5 ||
			  socScale2>5 || qualScale2>5) {
		  response.sendRedirect("SearchMenu.jsp?Error=-4");
	  }
	
	//search based on inputs
	ArrayList<University> searchedUniversities = sc.search(schoolName, state, location, control, 
			students1, students2, 
			femPerc1, femPerc2, satV1, satV2, satM1, satM2, cost1, cost2, finAidPerc1, finAidPerc2, 
			applicants1, applicants2, admitted1, admitted2, enrolled1, enrolled2, acadScale1, acadScale2, 
			socScale1, socScale2, qualScale1, qualScale2, emphases);
	
	// no matches found
	if(searchedUniversities==null || searchedUniversities.isEmpty()){
		response.sendRedirect("SearchMenu.jsp?Error=-5");
		return;
	}
%>
<body>
<table style="text-align: left; width: 100%;" border="1" ="2" cellspacing="2">

  <tbody>
    <tr>
      <td style="vertical-align: top; text-align: center;">Your search has returned a total of <%=searchedUniversities.size()%> schools<br>
      </td>
    </tr>
  </tbody>
</table>

<table style="text-align: left; width: 100%;" border="1" cellpadding="2" cellspacing="2">

  <tbody>
  
  <%
  	for(int i=0; i<searchedUniversities.size(); i++){ 
  		String univName = searchedUniversities.get(i).getName();
  %>
    <tr>
      <td style="vertical-align: top; width: 50px;">
      <form method="post" action="SaveSchool_action.jsp" name="SaveSchool">
      		<input name="Save" value="Save" type="submit">
      		<input name="SchoolName" value="<%=univName%>" type="hidden"><br>
      </form>
      </td>
      
      <td style="vertical-align: top; width: 200px;"><%=univName%><br>
      </td>
      
      <td style="vertical-align: top; width: 50px;">
      <form method="post" action="ViewRecSchools.jsp" name="ViewRecSchools">
      		<input name="View" value="View" type="submit">
      		<input name="SchoolName" value="<%=univName%>" type="hidden"><br>
      </form>
	</td>
    </tr>
  <%} %>
  
  </tbody>
  
</table>

<br>

<br>
<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>


<script>

window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("myBtn").style.display = "block";
    } else {
        document.getElementById("myBtn").style.display = "none";
    }
}

function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}
</script>
</body></html>