<%@ page language="java" import="controller.*, entity.*, interfaces.*,java.util.*"%>
<%@include file="verifyLogin.jsp"%>
<html>
<head>
<style>
</style>
</head>
<style>
* {box-sizing: border-box}
body {font-family: "Lato", sans-serif;}

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #ddd}


</style>
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
<table style="text-align: left; width: 100%;" border="1" cellpadding="2" cellspacing="2">

  <tbody>
    <tr>
      <td style="vertical-align: top;">SCHOOL<br>
      </td>
      <td style="vertical-align: top;"> <%=schoolName%> </td>
    </tr>
    <tr>
      <td style="vertical-align: top;">STATE<br>
      </td>
      <td style="vertical-align: top;"> <%=state%></td>
    </tr>
    <tr>
      <td style="vertical-align: top;">LOCATION<br>
      </td>
      <td style="vertical-align: top;"> <%=location%> </td>
    </tr>
    <tr>
      <td style="vertical-align: top;">CONTROL<br>
      </td>
      <td style="vertical-align: top;"><%=control%></td>
    </tr>
    <tr>
      <td style="vertical-align: top;">NUMBER OF STUDENTS<br>
      </td>
      <td style="vertical-align: top;"><%=students%></td>
    </tr>
    <tr>
      <td style="vertical-align: top;">% FEMALE<br>
      </td>
      <td style="vertical-align: top;"><%=femPerc%>% </td>
    </tr>
    <tr>
      <td style="vertical-align: top;">SAT VERBAL<br>
      </td>
      <td style="vertical-align: top;"><%=satV%></td>
    </tr>
    <tr>
      <td style="vertical-align: top;">SAT MATH<br>
      </td>
      <td style="vertical-align: top;"><%=satM%></td>
    </tr>
    <tr>
      <td style="vertical-align: top;">EXPENSES<br>
      </td>
      <td style="vertical-align: top;"><%=cost%></td>
    </tr>
    <tr>
      <td style="vertical-align: top;">% FINANCIAL AID<br>
      </td>
      <td style="vertical-align: top;"><%=finAidPerc%>% </td>
    </tr>
    <tr>
      <td style="vertical-align: top;">NUMBER OF APPLICANTS<br>
      </td>
      <td style="vertical-align: top;"><%=applicants%></td>
    </tr>
    <tr>
      <td style="vertical-align: top;">% ADMITTED<br>
      </td>
      <td style="vertical-align: top;"><%=admitted%>% </td>
    </tr>
    <tr>
      <td style="vertical-align: top;">% ENROLLED<br>
      </td>
      <td style="vertical-align: top;"><%=enrolled%>% </td>
    </tr>
    <tr>
      <td style="vertical-align: top;">ACADEMIC SCALE (1-5)<br>
      </td>
      <td style="vertical-align: top;"><%=acadScale%></td>
    </tr>
    <tr>
      <td style="vertical-align: top;">SOCIAL SCALE (1-5)<br>
      </td>
      <td style="vertical-align: top;"><%=socScale%></td>
    </tr>
    <tr>
      <td style="vertical-align: top;">QUALITY OF LIFE SCALE (1-5)<br>
      </td>
      <td style="vertical-align: top;"><%=qualScale%></td>
    </tr>
    <tr>
      <td style="vertical-align: top;">EMPHASES<br>
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
      		for(int l=0; l<emphases.size();l++){ 
      			String emphasis = emphases.get(l);
      %>
      			
      				<%=emphasis%><br>
      			
      <%	} %>
      		</td>
      <%}%>	
    </tr>
  </tbody>
</table>

<br>

<br>
</body></html>