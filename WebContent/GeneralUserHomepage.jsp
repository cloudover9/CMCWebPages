<%@include file="verifyLogin.jsp"%>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
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

#Search {background-color:red;}
#ManageSchool {background-color:green;}
#ManageP {background-color:blue;}
#Logout {background-color:orange;}
</style>
</head>
<body>

<p>Click on the buttons inside the tabbed menu:</p>

<div id="Search" class="tabcontent">
  <h3>Search</h3>
 <a href="SearchMenu.jsp" target="_self">Search for Schools</a> 
</div>

<div id="ManageSchool" class="tabcontent">
  <h3>Manage Saved Schools </h3>
  <a href="ManageSavedSchools.jsp" target="_self">Manage My Saved Schools</a>
  
</div>

<div id="ManageP" class="tabcontent">
  <h3>Manage My Profile </h3>
  <a href="EditUser.jsp" target="_self">Manage My Profile</a>
  
</div>

<div id="Logout" class="tabcontent">
  <h3>Logout</h3>
    <a href="" target="_self">Manage My Profile</a>
</div>

<button class="tablink" onclick="openCity('Search', this, 'red')" id="defaultOpen">Search for A School</button>
  
<button class="tablink" onclick="openCity('ManageSchool', this, 'green')">Manage My Saved Schools</button>
<button class="tablink" onclick="openCity('ManageP', this, 'blue')">Manage My Profile</button>
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
     
</body>
</html> 