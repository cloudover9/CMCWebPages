<%@include file="verifyLogin.jsp"%>
<%@include file= "TranslateFeature.jsp" %>

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
    background-color: #525252;
}

/* Style the tab content */
.tabcontent {
    color: black;
    display: none;
    padding: 50px;
    font-size: 18px;
    text-align: center;
}


#Search {background-color:#FF6347;}
#ManageSchool {background-color:#00B300;}
#ManageP {background-color:#0077fb;}
#Logout {background-color:orange;}
</style>
</head>
<body>

<div id="main">
  
</div>

<div id="Search" class="tabcontent">
  <h3>Search</h3>
 <a href="SearchMenu.jsp" target="_self">Search for Schools</a> 
</div>

<div id="ManageSchool" class="tabcontent">
  <h3>Manage Saved Schools </h3>
  <a href="ManageSavedSchools2.jsp" target="_self">Manage My Saved Schools</a>
</div>

<div id="ManageP" class="tabcontent">
  <h3>Manage My Profile </h3>
  <a href="EditUser.jsp" target="_self">Manage My Profile</a>
</div>


<div id="Logout" class="tabcontent">
  <h3>Logout</h3>
    <a href="Logout_action.jsp" target="_self">Logout </a>
</div>

<button class="tablink" onclick="openTab('Search', this, '#FF6347')" id="defaultOpen">Search for A School</button>
<button class="tablink" onclick="openTab('ManageSchool', this, 'green')">Manage My Saved Schools</button>
<button class="tablink" onclick="openTab('ManageP', this, '#0077fb')">Manage My Profile</button>
<button class="tablink" onclick="openTab('Logout', this, 'orange')">Logout of CMC System</button>

<script>
function openTab(tabName,elmnt,color) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablink");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].style.backgroundColor = "";
    }
    document.getElementById(tabName).style.display = "block";
    elmnt.style.backgroundColor = color;

}

document.getElementById("defaultOpen").click();
</script>
     
</body>
</html> 
