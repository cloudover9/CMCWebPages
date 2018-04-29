<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>General User Sidebar Navigation</title>
</head>
<body>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<div class="w3-sidebar w3-bar-block w3-card w3-animate-left" style="display:none" id="mySidebar">
  <button  class="w3-bar-item w3-button w3-large" onclick="w3_close()">Close &times;</button>
  
  <a style="font-size:18px" href="GeneralUserHomepage.jsp" class="w3-bar-item w3-button">Home</a>
  <a style="font-size:18px" href="SearchMenu.jsp"          class="w3-bar-item w3-button">Search</a>
  <a style="font-size:18px" href="ManageSavedSchools2.jsp" class="w3-bar-item w3-button">Manage Saved Schools</a>
  <a style="font-size:18px" href="EditUser.jsp"            class="w3-bar-item w3-button">Manage Profile</a>
  <a style="font-size:18px" href="Logout_action.jsp"       class="w3-bar-item w3-button">Logout</a>
</div>

<div id="main">

<div class="w3-grey">
  <button id="openNav"  class="w3-button w3-black w3-xlarge" onclick="w3_open()">&#9776;</button>
  <div class="w3-container">
    
  </div>
</div>


<script>
function w3_open() {
  document.getElementById("main").style.marginLeft = "25%";
  document.getElementById("mySidebar").style.width = "25%";
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("openNav").style.display = 'none';
}
function w3_close() {
  document.getElementById("main").style.marginLeft = "0%";
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("openNav").style.display = "inline-block";
}
</script>
</body>
</html>