<html><head>
<title>AddAccount</title>

<%@include file= "TranslateFeature.jsp" %>
</head><body>
<form method="post" action="AddAccount_action.jsp" name="AddAccount">

<%
String anyErrors = request.getParameter("Error");
if(anyErrors!=null && anyErrors.equals("-1")){
	out.println("the username already exists. Choose a different username.<br>");
}
if(anyErrors!=null && anyErrors.equals("-2")){
	out.println("The type must be either 'u' or 'a'.<br>");
}
%>

  <table style="text-align: left; width: 100%;" border="1" cellpadding="2" cellspacing="2">
    <tbody>
      <tr>
        <td style="vertical-align: top;">First Name<br>
        </td>
        <td style="vertical-align: top;"><input name="FirstName"><br>
        </td>
      </tr>
      <tr>
        <td style="vertical-align: top;">Last Name<br>
        </td>
        <td style="vertical-align: top;"><input name="LastName">
        </td>
      </tr>
      <tr>
        <td style="vertical-align: top;">Username<br>
        </td>
        <td style="vertical-align: top;"><input name="Username">
        </td>
      </tr>
      <tr>
        <td style="vertical-align: top;">Password<br>
        </td>
        <td style="vertical-align: top;"><input name="Password">
        </td>
      </tr>
      <tr>
        <td style="vertical-align: top;">Type<br>
        </td>
        <td style="vertical-align: top;">
        <select name="Type">
        <option value="u">u</option>
        <option value="a">a</option>
        </select>
        <br>

        </td>
      </tr>
    </tbody>
  </table>
  <input name="Add User" value="Add User" type="submit"> 
  <input name="Reset" value="Reset" type="reset"><br>
</form>

<br>

<br>

</body></html>