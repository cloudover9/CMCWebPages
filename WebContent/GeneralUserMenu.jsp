<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>
body {
    font-family: "Lato", sans-serif;
}

.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidenav a:hover {
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

#main {
    transition: margin-left .5s;
    padding: 16px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

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

input[type=submit]:hover {
background-color: #1a8cff;
    color: white;
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
input[type=reset]:hover {
    background-color: #1a8cff;
    color: white;
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
<!-- <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span> -->
<!-- </head> -->
<!-- <body> -->

<!-- <div id="mySidenav" class="sidenav"> -->
<!--   <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a> -->
<!--   <a href="GeneralUserHomepage.jsp">Home</a> -->
<!--   <a href="SearchMenu.jsp">Search</a> -->
<!--   <a href="ManageSavedSchools2.jsp">Manage Saved Schools</a> -->
<!--   <a href="EditUser.jsp">Manage Profile</a> -->
<!--   <br><br> -->
<!--   <a href="Logout_action.jsp">Logout</a> -->
<!-- </div> -->

<!-- <script> -->
<!-- // function openNav() { -->
<!-- //     document.getElementById("mySidenav").style.width = "250px"; -->
<!-- //     document.getElementById("main").style.marginLeft = "250px"; -->
<!-- // } -->

<!-- // function closeNav() { -->
<!-- //     document.getElementById("mySidenav").style.width = "0"; -->
<!-- //     document.getElementById("main").style.marginLeft= "0"; -->
<!-- // } -->
<!-- </script> -->
</body>
</html>