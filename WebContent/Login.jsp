<html>

<head> 
  <title>Login</title>
</head>

<body>
<form action="Login_action.jsp" method="post" name="Login">

<%
String anyErrors = request.getParameter("Error");
if(anyErrors!=null && anyErrors.equals("-1")){
	out.println("One or more of the fields are empty. Please fill out the form.<br>");
}
if(anyErrors!=null && anyErrors.equals("-2")){
	out.println("The username is invalid.<br>");
}
if(anyErrors!=null && anyErrors.equals("-3")){
	out.println("The password is invalid.<br>");
}
if(anyErrors!=null && anyErrors.equals("-4")){
	out.println("<Your account has been deactivated.br>");
}
%>

  <table style="text-align: left; width: 200px; height: 266px; background-color: white; margin-left: auto; margin-right: auto;" border="1" cellpadding="2" cellspacing="2">
    <caption>Welcome to the CMC System!<br></caption> 
    <tbody>
      <tr>
        <td style="vertical-align: middle; text-align: center;">Username<br>
        </td>
        <td style="vertical-align: middle; text-align: center;"><input name="Username"><br>
        </td>
      </tr>
      <tr>
        <td style="vertical-align: middle; text-align: center;">Password<br>
        </td>
        <td style="vertical-align: middle; text-align: center;"><input type="password" name="Password"><br>
        </td>
      </tr>
      <tr>
        <td style="vertical-align: middle; text-align: center;"><input name="Submit" value="Submit" type="submit"><br>
        </td>
        <td style="vertical-align: middle; text-align: center;"><input name="Reset" value="Reset" type="reset"><br>
        </td>
      </tr>
    </tbody>
  </table>
  <br>
</form>

</body></html>