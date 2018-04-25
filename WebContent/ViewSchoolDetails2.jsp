<%@ page language="java" import="controller.*, entity.*, interfaces.*,java.util.*"%>
<%@include file="verifyLogin.jsp"%>
<%@include file= "TranslateFeature.jsp" %>
<html>
<head>
<style>
</style>
</head>
<%
	UserFuncController ufc = (UserFuncController)session.getAttribute("UserController"); 
	String schoolName = request.getParameter("SchoolName");
	String state = ufc.getUniversity(schoolName).getState();
	String location = ufc.getUniversity(schoolName).getLocation();
	String control = ufc.getUniversity(schoolName).getControl();
	int students = ufc.getUniversity(schoolName).getStudents();
	int femPerc = ufc.getUniversity(schoolName).getFemPerc();
	int satV = ufc.getUniversity(schoolName).getSatV();
	int satM = ufc.getUniversity(schoolName).getSatM();
	int cost = ufc.getUniversity(schoolName).getCost();
	int finAidPerc = ufc.getUniversity(schoolName).getFinAidPerc();
	int applicants = ufc.getUniversity(schoolName).getApplicants();
	int admitted = ufc.getUniversity(schoolName).getAdmitted();
	int enrolled = ufc.getUniversity(schoolName).getEnrolled();
	int acadScale = ufc.getUniversity(schoolName).getAcadScale();
	int socScale = ufc.getUniversity(schoolName).getSocScale();
	int qualScale = ufc.getUniversity(schoolName).getQualScale();
%>

<body>
<h1 style="background-color:Gray;" ><br><%=schoolName%></h1>
<table style="text-align: left; width: 80%;" border="1" >
  <tbody>
    <tr>
      <td style="vertical-align: top;"><b>STATE</b><br>
      </td>
      <td style="vertical-align: top;"><%=state%> </td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>LOCATION</b><br>
      </td>
      <td style="vertical-align: top;"><%=location%> </td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>CONTROL</b><br>
      </td>
      <td style="vertical-align: top;"><%=control%></td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>NUMBER OF STUDENTS</b><br>
      </td>
      <td style="vertical-align: top;"><%=students%> </td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>% FEMALE</b><br>
      </td>
      <td style="vertical-align: top;"><%=femPerc%></td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>SAT VERBAL</b><br>
      </td>
      <td style="vertical-align: top;"><%=satV%> </td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>SAT MATH</b><br>
      </td>
      <td style="vertical-align: top;"><%=satM%> </td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>EXPENSES</b><br>
      </td>
      <td style="vertical-align: top;"><%=cost%></td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>% FINANCIAL AID</b><br>
      </td>
      <td style="vertical-align: top;"><%=finAidPerc%> </td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>NUMBER OF APPLICANTS</b><br>
      </td>
      <td style="vertical-align: top;"><%=applicants%></td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>% ADMITTED</b><br>
      </td>
      <td style="vertical-align: top;"><%=admitted%></td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>% ENROLLED</b><br>
      </td>
      <td style="vertical-align: top;"><%=enrolled%></td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>ACADEMIC SCALE (1-5)</b><br>
      </td>
      <td style="vertical-align: top;"><%=acadScale%></td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>SOCIAL SCALE (1-5)</b><br>
      </td>
      <td style="vertical-align: top;"><%=socScale%> </td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>QUALITY OF LIFE SCALE (1-5)</b><br>
      </td>
      <td style="vertical-align: top;"><%=qualScale%></td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>EMPHASES</b><br>
      </td>
      <%ArrayList<String> emphases = ufc.getUniversity(schoolName).getEmphases();%>
      
      <% if(emphases.isEmpty()){ %>
      		<td style="vertical-align: top;">
      			<input value="none" readonly="readonly" name="Emphases"> <br>
      		</td>
      <%} 
      	else{%>
      		<td style="vertical-align: top;">
      <% 
      		for(int i=0; i<emphases.size();i++){ 
      			String emphasis = emphases.get(i);
      %>
      			
      				<%=emphasis%>  <br>
      <%	} %>
      		</td>
      <%}%>
      	
    </tr>
  </tbody>
</table>

<br>

<br>
</body></html>