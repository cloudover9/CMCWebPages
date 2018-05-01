<%@ page language="java" import="controller.*, entity.*, interfaces.*,java.util.*"%>
<%@include file="verifyLogin.jsp"%>
<%@include file= "TranslateFeature.jsp" %>
<%@include file= "AdminMenu.jsp" %>
<%@include file= "AdminMenu2.jsp" %><br>
<%
	AdminFuncController afc = (AdminFuncController)session.getAttribute("AdminController");
	ArrayList<University> allUnivs = afc.getAllUniversities();
%>
<html>
<head>
  <title>ManageUniversities</title>  
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
  /* outline: none; */
  background-color: red;
  color: white;
  /* cursor: pointer; */
  padding: 15px;
  border-radius: 4px;
}

#myBtn:hover, #myBtn:focus {
  background-color: #555;
  border-radius:15px;border:5px solid black;
  padding: 10px; 
}

#addLink:hover, #addLink:focus {
  border-radius:15px;border:5px solid black;
  padding: 10px; 
}
</style>
<body>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2" cellspacing="2">

  <tbody>
    <tr>
      <td style="vertical-align: top;" colspan="17">
      	<div style="text-align: center;">
      		<a style="font-size:18px" href="AddUniversity.jsp" target="_self" class="addLink">Add a New University</a>
      	</div>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: top;">School<br>
      </td>
      <td style="vertical-align: top;">State<br>
      </td>
      <td style="vertical-align: top;">Location<br>
      </td>
      <td style="vertical-align: top;">Control<br>
      </td>
      <td style="vertical-align: top;"># of Students<br>
      </td>
      <td style="vertical-align: top;">% Females<br>
      </td>
      <td style="vertical-align: top;">SAT Verbal<br>
      </td>
      <td style="vertical-align: top;">SAT Math
      </td>
      <td style="vertical-align: top;">Expenses<br>
      </td>
      <td style="vertical-align: top;">% with Financial Aid<br>
      </td>
      <td style="vertical-align: top;"># of Applicants<br>
      </td>
      <td style="vertical-align: top;">% Admitted<br>
      </td>
      <td style="vertical-align: top;">% Enrolled<br>
      </td>
      <td style="vertical-align: top;">Academics Scale (1-5)<br>
      </td>
      <td style="vertical-align: top;">Social&nbsp; Scale (1-5)<br>
      </td>
      <td style="vertical-align: top;">Quality of Life Scale (1-5)<br>
      </td>
      <td style="vertical-align: top;"><br>
      </td>
    </tr>
    <%
    for(University univ: allUnivs) {
    	String schoolName = univ.getName();
    	String state = univ.getState();
    	String location = univ.getLocation();
    	String control = univ.getControl();
    	int students = univ.getStudents();
    	int femPerc = univ.getFemPerc();
    	int satV = univ.getSatV();
    	int satM = univ.getSatM();
    	int cost = univ.getCost();
    	int finAidPerc = univ.getFinAidPerc();
    	int applicants = univ.getApplicants();
    	int admitted = univ.getAdmitted();
    	int enrolled = univ.getEnrolled();
    	int acadScale = univ.getAcadScale();
    	int socScale = univ.getSocScale();
    	int qualScale = univ.getQualScale();
    %>
    	<tr>
      		<td style="vertical-align: top;"><%=schoolName%><br>
      		</td>
      		<td style="vertical-align: top;"><%=state%><br>
      		</td>
      		<td style="vertical-align: top;"><%=location%><br>
      		</td>
      		<td style="vertical-align: top;"><%=control%><br>
      		</td>
      		<td style="vertical-align: top;"><%=students%><br>
      		</td>
      		<td style="vertical-align: top;"><%=femPerc%><br>
      		</td>
      		<td style="vertical-align: top;"><%=satV%><br>
      		</td>
      		<td style="vertical-align: top;"><%=satM%><br>
      		</td>
      		<td style="vertical-align: top;"><%=cost%><br>
      		</td>
      		<td style="vertical-align: top;"><%=finAidPerc%><br>
      		</td>
      		<td style="vertical-align: top;"><%=applicants%><br>
      		</td>
      		<td style="vertical-align: top;"><%=admitted%><br>
      		</td>
      		<td style="vertical-align: top;"><%=enrolled%><br>
      		</td>
      		<td style="vertical-align: top;"><%=acadScale%><br>
      		</td>
      		<td style="vertical-align: top;"><%=socScale%><br>
      		</td>
      		<td style="vertical-align: top;"><%=qualScale%><br>
      		</td>
      		<td style="vertical-align: top;">
      		<form method="post" action="EditUniversity.jsp" name="EditUniversity">
      			<input value="Edit" name="Edit" type="submit"><br>
      			<input value="<%=schoolName%>" name="SchoolName" type="hidden"><br>
      		</form>
	  		</td>
    	</tr>
    <%} %>
  </tbody>
</table>

<br>

<br>

<!--Press Alt+Shift+t to access this button -->
<button onclick="topFunction()" id="myBtn" title="Go to top" accesskey="t">Top</button>



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