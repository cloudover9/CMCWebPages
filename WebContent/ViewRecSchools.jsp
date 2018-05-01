<%@ page language="java" import="controller.*, entity.*, interfaces.*,java.util.*"%>
<%@include file="verifyLogin.jsp"%>
<%@include file= "TranslateFeature.jsp" %>
<%@include file= "GeneralUserMenu2.jsp" %>

<html>
<head>
  <title>ViewRecSchools</title>
</head>

<%
	UserFuncController recUFC = (UserFuncController)session.getAttribute("UserController");
	SearchController sc = new SearchController();
	String recSchoolName = request.getParameter("SchoolName");
	ArrayList<University> recSchools = sc.recSearch(recUFC.getUniversity(recSchoolName));
%>

<body>

<form method="post" action="SaveSchool_action.jsp" name="SaveSchool">
	<input name="Save" value="Save" type="submit"> 
	<input name="SchoolName" value="<%=recSchoolName%>" type="hidden"> <br>
	<%@include file="ViewSchoolDetails.jsp"%>
</form>

MAY WE ALSO RECOMMEND<br>

<%for(int i=0; i<recSchools.size(); i++){ 
	String univName = recSchools.get(i).getName();
	String stateRec = ufc.getUniversity(univName).getState();
	String locationRec = ufc.getUniversity(univName).getLocation();
	String controlRec = ufc.getUniversity(univName).getControl();
	int studentsRec = ufc.getUniversity(univName).getStudents();
%>
<form method="post" action="SaveSchool_action.jsp" name="SaveSchool"> 
	<input name="Save" value="Save" type="submit"> 
	<input name="SchoolName" value="<%=univName%>" type="hidden"> <br>
	
	<table style="text-align: left; width: 100%;" border="1" cellpadding="2" cellspacing="2">

  		<tbody>
    		<tr>
      			<td style="vertical-align: top;">SCHOOL<br>
      			</td>
      			<td style="vertical-align: top;"><%=univName%><br>
      			</td>
    		</tr>
    		<tr>
      			<td style="vertical-align: top;">STATE<br>
      			</td>
      			<td style="vertical-align: top;"><%=stateRec%></td>
    		</tr>
    		<tr>
      			<td style="vertical-align: top;">LOCATION<br>
      			</td>
     			 <td style="vertical-align: top;"><%=locationRec%> </td>
    		</tr>
    		<tr>
      			<td style="vertical-align: top;">CONTROL<br>
      			</td>
      			<td style="vertical-align: top;"><%=controlRec%> </td>
    		</tr>
    		<tr>
      			<td style="vertical-align: top;">NUMBER OF STUDENTS<br>
      			</td>
      			<td style="vertical-align: top;"><%=studentsRec%> </td>
    		</tr>
    	</tbody>
	</table>
</form>

<%} %>
<br>

</body></html>