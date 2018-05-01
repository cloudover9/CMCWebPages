<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>CMC System: Admin </title>
<!--  THE BAR WORKS -->
<style>
body {font-family: "Helvetica", sans-serif;}
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #ddd}

input[type=submit] {
  background-color: #cccccc; 
   color: black; 
   border: 2px solid #cccccc;
   padding: 4px 8px;
   text-align: center;
   text-decoration: none;
   display: inline-block;
   font-size: 16px;
   margin: 4px 2px;
   -webkit-transition-duration: 0.4s; 
   transition-duration: 0.4s;
   cursor: pointer;
   border-radius: 4px
}

/*Keyboard user can also highlight current element    */
input[type=submit]:hover, input[type=submit]:focus  {
background-color: #429AFF;
    color: black;
    border-radius:5px;border:2px solid black;
    font-size: 16px;
}

input[type=reset] {
  background-color: #cccccc; 
   color: black; 
   border: 2px solid #cccccc;
   padding: 4px 8px;
   text-align: center;
   text-decoration: none;
   display: inline-block;
   font-size: 16px;
   margin: 4px 2px;
   -webkit-transition-duration: 0.4s; 
   transition-duration: 0.4s;
   cursor: pointer;
   border-radius: 4px
}
input[type=reset]:hover ,  input[type=reset]:focus{
 background-color: #429AFF;
    color: black;
    border-radius:5px;border:2px solid black;
    font-size: 16px;
    }    
</style>

<!-- ADDED FROM GENERAL USER MENU2 -->

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
body {font-family: "Helvetica", sans-serif;}

.tablink{
    background-color: #555;
    color: white;
    float: left;
   /* border: none; */
    /*outline: none;  */
    /* cursor: pointer; */
    padding: 14px 16px;
    font-size: 17px;
    width: 40%;
    
}

.tablink:hover, .tablink:focus{
    background-color: green;
    color: white;
    border-radius:15px;border:5px solid black;
    padding: 10px; 
    
}

.theSidebar ww3-bar-item w3-button:focus {
    border-radius:15px;border:5px solid black;
    padding: 10px; 
    font-size: 18px;
}
.tabcontent {
    color: black;
    display: none;
    margin: 18px 0;
    padding: 50px;
    font-size: 18px;
    text-align: center;
    border-bottom: 5px solid;
    
}

.tabcontent:focus {
	border-radius:15px;border:5px solid black;
}

/* the symbol right */
.w3-grey openNav:focus {
    border-radius:15px;border:5px solid red;
    padding: 16px; 
   
} 
#ManageSchool {background-color:#ddd; border-bottom: 5px solid ;} /* #FF6347  */
#ManageUser {background-color:#ddd; border-bottom: 5px solid ;}   /*  #00B300 */
#Logout {background-color:#ddd; border-bottom: 5px solid ;}      /* 0077fb  */
</style>

<body>

<!-- "w3-sidebar w3-bar-block w3-card w3-animate-left"  instead of theSidebar  -->
<!-- CLOSE BUTTON "w3-bar-item w3-button w3-large"  instead of options -->
<!-- "ww3-bar-item w3-button"  instead of options -->

<div class="theSidebar" style="display:none" id="mySidebar">
  <button  class="w3-bar-item w3-button w3-large" onclick="w3_close()" tabindex="1" accesskey="c">Close &times;</button> <br>
  
  <a style="font-size:18px" href="AdminHomepage2.jsp"     class="ww3-bar-item w3-button"  tabindex="2" accesskey="a">Visit Homepage</a>      <br>
  <a style="font-size:18px" href="ManageUniversities.jsp" class="ww3-bar-item w3-button"  tabindex="3" accesskey="s">Manage Universities</a> <br>
  <a style="font-size:18px" href="ManageUsers.jsp"        class="ww3-bar-item w3-button"  tabindex="4" accesskey="d">Manage Users</a>        <br>
  <a style="font-size:18px" href="Logout_action.jsp"      class="ww3-bar-item w3-button"  tabindex="5" accesskey="q">Logout of System</a>     <br>
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