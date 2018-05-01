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
<style>
body {font-family: "Helvetica", sans-serif;}

.tablink {
    background-color: #555;
    color: white;
    float: left;
    border: none;
    /* outline: none;*/
    /* cursor: pointer; */
    padding: 14px 16px;
    font-size: 17px;
    width: 25%;
}

.tablink:hover, .tablink:focus {
    background-color: green;
    color: white;
    border-radius:15px;border:5px solid black;
    padding: 10px; 
}

/* Style the tab content */
.tabcontent {
    color: black;
    display: none;
    padding: 50px;
    font-size: 18px;
    text-align: center;
}


.mySidebar:focus {
 	background-color: green;
    color: white;
    border-radius:15px;border:5px solid black;
    padding: 10px; 
}

#Search {background-color:#FF6347;}
#ManageSchool {background-color:#00B300;}
#ManageP {background-color:#0077fb;}
#Logout {background-color:orange;}
</style>
<body>

<div class="w3-sidebar w3-bar-block w3-card w3-animate-left" style="display:none" id="mySidebar">

  <button  class="w3-bar-item w3-button w3-large" onclick="w3_close()" tabindex="1">Close &times;</button>
  <a style="font-size:18px" href="GeneralUserHomepage.jsp" class="w3-bar-item w3-button" tabindex="2">Visit Homepage</a>
  <a style="font-size:18px" href="SearchMenu.jsp"          class="w3-bar-item w3-button" tabindex="3">Search for Schools</a>
  <a style="font-size:18px" href="ManageSavedSchools2.jsp" class="w3-bar-item w3-button" tabindex="4">Manage Saved Schools</a>
  <a style="font-size:18px" href="EditUser.jsp"            class="w3-bar-item w3-button" tabindex="5">Manage Profile</a>
  <a style="font-size:18px" href="Logout_action.jsp"       class="w3-bar-item w3-button" tabindex="6">Logout of System</a>
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