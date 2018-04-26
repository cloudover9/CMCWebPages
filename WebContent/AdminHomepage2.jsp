<%@include file="verifyLogin.jsp"%>
<%@include file= "TranslateFeature.jsp" %>
<%@include file= "AdminMenu.jsp" %><br>
<html>


<head>
<style>
body {font-family: "Helvetica", sans-serif;}

.tablink {
    background-color: #555;
    color: white;
    float: left;
    border: none;
    outline: none;
    
    cursor: pointer;
    padding: 14px 16px;
    font-size: 17px;
    width: 25%;
}

.tablink:hover {
    background-color: #777;
}

/* Style the tab content */
.tabcontent {
    color: white;
    display: none;
    padding: 50px;
    
    text-align: center;
}


#ManageSchool {background-color:red;}
#ManageUser {background-color:green;}
#Logout {background-color:orange;}
</style>
</head>

<body>
<%@include file= "AdminMenu.jsp" %>


<div id="main">

  
</div>

<p>Click on the buttons inside the tabbed menu:</p>

<div id="Search" class="tabcontent">
  <h3>Search</h3>
 <a href="SearchMenu.jsp" target="_self">Search for Schools</a> 
</div>

<div id="ManageSchool" class="tabcontent">
  <h3>Manage Saved Schools </h3>
  <a href="ManageUniversities.jsp" target="_self">Manage Universities</a>
  
</div>

<div id="ManageUser" class="tabcontent">
  <h3>Manage My Profile </h3>
  <a href="ManageUsers.jsp" target="_self">Manage Users</a>
  
</div>


<div id="Logout" class="tabcontent">
  <h3>Logout</h3>
    <a href="AdminHomepage.jsp" target="_self">Logout </a>
</div>



<button class="tablink" onclick="openCity('Search', this, 'red')" id="defaultOpen">Manage Universities</button>
  
<button class="tablink" onclick="openCity('ManageSchool', this, 'green')">Manage Users</button>
<button class="tablink" onclick="openCity('Logout', this, 'orange')">Logout of CMC System</button>

<script>
function openCity(cityName,elmnt,color) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablink");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].style.backgroundColor = "";
    }
    document.getElementById(cityName).style.display = "block";
    elmnt.style.backgroundColor = color;

}
// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>

<a href="ManageUniversities.jsp" target="_self">Manage Universities</a><br>
<a href="ManageUsers.jsp" target="_self">Manage Users</a><br>
</body>

</html>