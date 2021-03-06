<%@ page language="java" import="controller.*, entity.*, interfaces.*,java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<%@include file= "GeneralUserMenu2.jsp" %>

<%
UserFuncController ufc = (UserFuncController)session.getAttribute("UserController"); 
GeneralUser gu = ufc.getCurrentGeneralUser();
ArrayList<String> allSavedSchoolNames = gu.getSavedSchools();
%>
<head>
<h1 style="text-align: right;"> <%@include file= "TranslateFeature.jsp" %></h1>

<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box}
body {font-family: "Helvetica";}

/* Style the tab */
.tab {
    float: left;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
    width: 30%;
    height: 300px;
}

/* Style the buttons inside the tab */
.tab button {
    display: block;
    background-color: inherit;
    color: black;
    padding: 22px 16px;
    width: 100%;
    border: none;
    /* outline: none; */
    text-align: left;
    /* cursor: pointer; */
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover, .tab button:focus {
    background-color: #ddd;
    border-radius:5px;border:2px solid black;

}

/* Create an active/current "tab button" class */
.tab button.active {
    background-color: #429AFF;
    color: black;
    border-radius:5px;border:2px solid black;

}

/* Style the tab content */
.tabcontent {
    float: left;
    padding: 0px 12px;
    border: 1px solid #ccc;
    width: 70%;
    height: 100%;
}

.remove:focus{
    border-radius:15px;border:5px solid black;
    padding: 10px; 
}
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

</head>
<body>


<div class="tab">
<% 
boolean first = true;
  	for(int i=0; i<allSavedSchoolNames.size();i++){
  		String schoolName = allSavedSchoolNames.get(i);
  	%>


  <button class="tablinks" onclick="openSchool(event, '<%out.print(schoolName);%>')"<%if(first) out.print("id="+"\"defaultOpen\"");%>><%out.println(schoolName);%></button>
<%first = false; 
}%>
</div>

<% 
  	for(int i=0; i<allSavedSchoolNames.size();i++){
  		String schoolName = allSavedSchoolNames.get(i);
  	%>
<div id="<%out.print(schoolName);%>" class="tabcontent">
<h2><font face = "Georgia"><%out.println(schoolName); %></font></h2>
<%
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


<table style="text-align: left; width: 100%;" border="1" cellpadding="2" cellspacing="2">

  <tbody>
    <tr>
      <td style="vertical-align: top;"><b>STATE</b><br>
      </td>
      <td style="vertical-align: top;"> <%=state%></td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>LOCATION</b><br>
      </td>
      <td style="vertical-align: top;"> <%=location%> </td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>CONTROL</b><br>
      </td>
      <td style="vertical-align: top;"><%=control%></td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>NUMBER OF STUDENTS</b><br>
      </td>
      <td style="vertical-align: top;"><%=students%></td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>% FEMALE</b><br>
      </td>
      <td style="vertical-align: top;"><%=femPerc%>% </td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>SAT VERBAL</b><br>
      </td>
      <td style="vertical-align: top;"><%=satV%></td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>SAT MATH</b><br>
      </td>
      <td style="vertical-align: top;"><%=satM%></td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>EXPENSES</b><br>
      </td>
      <td style="vertical-align: top;"><%=cost%></td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>% FINANCIAL AID</b><br>
      </td>
      <td style="vertical-align: top;"><%=finAidPerc%>% </td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>NUMBER OF APPLICANTS</b><br>
      </td>
      <td style="vertical-align: top;"><%=applicants%></td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>% ADMITTED</b><br>
      </td>
      <td style="vertical-align: top;"><%=admitted%>% </td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>% ENROLLED</b><br>
      </td>
      <td style="vertical-align: top;"><%=enrolled%>% </td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>ACADEMIC SCALE (1-5)</b><br>
      </td>
      <td style="vertical-align: top;"><%=acadScale%></td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><b>SOCIAL SCALE (1-5)</b><br>
      </td>
      <td style="vertical-align: top;"><%=socScale%></td>
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
<form method="post" action="RemoveSavedSchool_action.jsp" name="RemoveSavedSchool">
      		<input name="Remove" value="Remove" type="submit" class= "remove">
      		<input name="SchoolName" value="<%=schoolName%>" type="hidden"><br>
      </form>
</div>
<br>
<%} %>



<script>
function openSchool(evt, schoolNAme) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(schoolNAme).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
     
</body>
</html> 