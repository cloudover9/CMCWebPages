<%@ page language="java" import="controller.*, entity.*, interfaces.*,java.util.*"%>
<%@include file="verifyLogin.jsp"%>
<%@include file= "TranslateFeature.jsp" %>
<%@include file= "AdminMenu2.jsp" %>
<%
	AdminFuncController afc = (AdminFuncController)session.getAttribute("AdminController"); 
	Admin a = afc.getCurrentAdmin();
%>
<html>
<head>
<title>EditUser</title> 
</head>



<style>

.submit:hover, .submit:focus{
    background-color: green;
    color: white;
    border-radius:15px;border:5px solid black;
    padding: 10px; 
    font-size: 16px;
}

.reset:hover, .reset:focus{
    background-color: green;
    color: white;
    border-radius:15px;border:5px solid black;
    padding: 10px; 
    font-size: 16px;
}

</style>
<form method="post" action="EditUser_action.jsp" name="EditUser">

<%
String anyErrors = request.getParameter("Error");
if(anyErrors!=null && anyErrors.equals("-1")){
	out.println("The first name is empty.<br>");
}
if(anyErrors!=null && anyErrors.equals("-2")){
	out.println("The last name is empty.<br>");
}
if(anyErrors!=null && anyErrors.equals("-3")){
	out.println("The password is empty.<br>");
}
%>

  <table style="text-align: left; width: 100%;" border="1" cellpadding="2" cellspacing="2">
    <tbody>
      <tr>
        <td style="vertical-align: top; width: 70%;">First Name<br>
        </td>
        <td style="vertical-align: top;"><input size="50" name="FirstName" value="<%=a.getFirstName()%>"><br>
        </td>
      </tr>
      <tr>
        <td style="vertical-align: top; width: 70%;">Last Name<br>
        </td>
        <td style="vertical-align: top;"><input size="50" name="LastName" value="<%=a.getLastName()%>"><br>
        </td>
      </tr>
      <tr>
        <td style="vertical-align: top; width: 70%;">Username<br>
        </td>
        <td style="vertical-align: top;"><input size="50" readonly="readonly" name="Username" value="<%=a.getUsername()%>"><br>
        </td>
      </tr>
      <tr>
        <td style="vertical-align: top; width: 70%;">Password<br>
        </td>
        <td style="vertical-align: top;"><input size="50" name="Password" value="<%=a.getPassword()%>"></td>
      </tr>
      <tr>
        <td style="vertical-align: top; width: 70%;">Type<br>
        </td>
        <td style="vertical-align: top;"><input size="50" readonly="readonly" name="Type" value="<%=a.getType()%>"></td>
      </tr>
    </tbody>
  </table>
  <input name="Edit User" value="Edit User" type="submit" class="submit"> 
 
  <input name="Reset" value="Reset" type="reset" class="reset"><br>
</form>

</body>
</html>