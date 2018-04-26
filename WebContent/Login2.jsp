<html>

<head> 
  <title>Login</title>
</head>
<%-- <img src="${pageContext.request.contextPath}/images/logo.jpg" alt = "Home" class= "center" style="float:left;width:150px;height:150px;" > --%>
<!-- <h1 style="background-color:Gray;text-align:center;" > <br><br> Welcome to the CMC System!<br><br><br> -->
<!-- </h1> -->
<body>


<%@include file= "TranslateFeature.jsp" %>


<style>


input[type=username], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    

}

   input[type=password], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box; 
}

input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

input[type=reset] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=reset]:hover {
    background-color: #45a049;
}

.alert {
    padding: 20px;
    background-color: #f44336;
    color: white;
}

.closebtn {
    margin-left: 15px;
    color: white;
    font-weight: bold;
    float: right;
    font-size: 22px;
    line-height: 20px;
    cursor: pointer;
    transition: 0.3s;
}

.closebtn:hover {
    color: black;
}

</style>



<h3 style= "background-color: rgb(95, 95, 95); color:white; text-align: center; border-radius: 4px;"> <br> Welcome to CMC! <br><br> </h3>

<%

String anyErrors = request.getParameter("Error");
if(anyErrors!=null && anyErrors.equals("-1")){%>
	<div class="alert">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  Sorry, you must submit log in credentials.
</div><br>
<%}
if(anyErrors!=null && anyErrors.equals("-2")){%>
	<div class="alert">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  Sorry, your account is unregistered.
</div><br>
<%}
if(anyErrors!=null && anyErrors.equals("-3")){%>
	<div class="alert">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  Sorry, your password is incorrect! Please log in again.
</div><br>
<%}
if(anyErrors!=null && anyErrors.equals("-4")){%>
	<div class="alert">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  Sorry, your account is deactivated.
</div><br>
<%}
if(anyErrors!=null && anyErrors.equals("-5")){//When would this happen?%>
	<div class="alert">
	  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
	  Sorry your username is incorrect! Please log in again!
	</div><br>
	<%}
if(anyErrors!=null && anyErrors.equals("-6")){%>
	<div class="alert">
	  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
	  You need to log in first!
	</div><br>
<%}%>

<div>
  <form action="Login_action.jsp" method="post" name="Login">
    <label for="fname">Username</label>
    <input type="username" id="fname" name="Username">

    <label for="lname">Password</label>
    <input type="password" id="lname" name="Password">
  
  	<input  style="font-size:16px" type="reset" value="Reset"  name=Reset>
    <input style="font-size:16px" type="submit" value="Submit">
  </form>
</div>

</body></html>