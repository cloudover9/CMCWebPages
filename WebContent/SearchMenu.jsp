<%@include file="verifyLogin.jsp"%>
<html>

<%@include file= "TranslateFeature.jsp" %>
<head>
<%@include file= "GeneralUserMenu2.jsp" %>
<%@include file= "GeneralUserMenu.jsp" %>
<title>SearchMenu</title>
</head>

<body>

<div style="text-align: right; font-weight: bold;">
<big><big>
Search Menu<br>
</big></big>
</div>



<form method="post" action="SearchResults.jsp" name="SearchMenu">
<%
	String anyErrors = request.getParameter("Error");
	if(anyErrors!=null && anyErrors.equals("-1")){
		out.println("One or more of the fields are empty. Please fill out the forms.<br>");
	}
	else if(anyErrors!=null && anyErrors.equals("-2")){
		out.println("The low fields are negative.<br>");
	}
	else if(anyErrors!=null && anyErrors.equals("-3")){
		out.println("The high fields are less than the low fields.<br>");
	}
	else if(anyErrors!=null && anyErrors.equals("-4")){
		out.println("The high fields are greater than their assigned limit.<br>");
	}
	else if(anyErrors!=null && anyErrors.equals("-5")){
		out.println("NO MATCHES FOUND.<br>");
	}
	else if(anyErrors!=null && anyErrors.equals("-6")){
		out.println("The fields that hold a number has a letter in it. Change these to a number.<br>");
	}
%>
  <table style="text-align: left; width: 100%;" border="1" cellpadding="2" cellspacing="2">
    <tbody>
      <tr>
        <td style="vertical-align: top; width: 25%;">by SCHOOL NAME<br>
        </td>
        <td style="vertical-align: top;">contains <input name="SchoolName"><br>
        </td>
      </tr>
      <tr>
        <td style="vertical-align: top;">by STATE</td>
        <td style="vertical-align: top;">contains <input name="State"><br>
        </td>
      </tr>
      <tr>
        <td style="vertical-align: top;">by LOCATION</td>
        <td style="vertical-align: top;">
        <select name="Location">
        <option value="">UNKNOWN</option>
        <option value="SUBURBAN">SUBURBAN</option>
        <option value="URBAN">URBAN</option>
        <option value="SMALL-CITY">SMALL-CITY</option>
        </select>
<br>
        </td>
      </tr>
      <tr>
        <td style="vertical-align: top;">by CONTROL</td>
        <td style="vertical-align: top;">
        <select name="Control">
        <option value="">UNKNOWN</option>
        <option value="PRIVATE">PRIVATE</option>
        <option value="STATE">STATE</option>
        <option value="CITY">CITY</option>
        </select>
<br>
        </td>
      </tr>
      <tr>
        <td style="vertical-align: top;">by NUMBER OF STUDENTS<br>
        </td>
        <td style="vertical-align: top;">between <input name="Students1" value="0"> and <input name="Students2" value="99999"><br>
        </td>
      </tr>
      <tr>
        <td style="vertical-align: top;">by % FEMALE (0-100)<br>
        </td>
        <td style="vertical-align: top;">between <input name="FemPerc1"value="0"> and <input name="FemPerc2" value="100"><br>
        </td>
      </tr>
      <tr>
        <td style="vertical-align: top;">by SAT VERBAL (0-800)<br>
        </td>
        <td style="vertical-align: top;">between <input name="SatV1"value="0"> and <input name="SatV2" value="800"><br>
        </td>
      </tr>
      <tr>
        <td style="vertical-align: top;">by SAT MATH (0-800)<br>
        </td>
        <td style="vertical-align: top;">between <input name="SatM1"value="0"> and <input name="SatM2" value="800"><br>
        </td>
      </tr>
      <tr>
        <td style="vertical-align: top;">by EXPENSES</td>
        <td style="vertical-align: top;">between <input name="Cost1"value="0"> and <input name="Cost2" value="99999"><br>
        </td>
      </tr>
      <tr>
        <td style="vertical-align: top;">by % FINANCIAL AID (0-100)<br>
        </td>
        <td style="vertical-align: top;">between <input name="FinAidPerc1"value="0"> and <input name="FinAidPerc2" value="100"><br>
        </td>
      </tr>
      <tr>
        <td style="vertical-align: top;">by NUMBER OF APPLICANTS<br>
        </td>
        <td style="vertical-align: top;">between <input name="Applicants1"value="0"> and <input name="Applicants2" value="99999"><br>
        </td>
      </tr>
      <tr>
        <td style="vertical-align: top;">by % ADMITTED (0-100)<br>
        </td>
        <td style="vertical-align: top;">between <input name="Admitted1"value="0"> and <input name="Admitted2" value="100"><br>
        </td>
      </tr>
      <tr>
        <td style="vertical-align: top;">by % ENROLLED (0-100)<br>
        </td>
        <td style="vertical-align: top;">between <input name="Enrolled1"value="0"> and <input name="Enrolled2" value="100"><br>
        </td>
      </tr>
      <tr>
        <td style="vertical-align: top;">by ACADEMIC SCALE (1-5)<br>
        </td>
        <td style="vertical-align: top;">between  <input name="AcadScale1"value="1"> and <input name="AcadScale2" value="5"><br>
        </td>
      </tr>
      <tr>
        <td style="vertical-align: top;">by SOCIAL SCALE (1-5)</td>
        <td style="vertical-align: top;">between <input name="SocScale1"value="1"> and <input name="SocScale2" value="5"><br>
        </td>
      </tr>
      <tr>
        <td style="vertical-align: top;">by QUALITY OF LIFE SCALE (1-5)</td>
        <td style="vertical-align: top;">between <input name="QualScale1"value="1"> and <input name="QualScale2" value="5"><br>
        </td>
      </tr>
      <tr>
        <td style="vertical-align: top;">by EMPHASES</td>
        <td style="vertical-align: top;">contains either<br>
        <input name="Emphases1"><br>
        <input name="Emphases2"><br>
        <input name="Emphases3"><br>
        <input name="Emphases4"><br>
        <input name="Emphases5"><br>
        </td>
      </tr>
    </tbody>
  </table>
  <input name="Search for Schools" value="Search for Schools" type="submit"> 
  <input name="Reset Form" value="Reset Form" type="reset"><br>
</form>

</body></html>