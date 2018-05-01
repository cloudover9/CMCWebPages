<%@include file="verifyLogin.jsp"%>
<%@include file= "TranslateFeature.jsp" %>
<%@include file= "AdminMenu.jsp" %><br>
<html>
<!-- WORKING ADMIN HOMEPAGE FROM LOGIN ACTION - NIMCO 4/30  -->
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
    width: 35%;
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

#ManageSchool {background-color:#FF6347;}
#ManageUser {background-color:#00B300;}
#Logout {background-color:#0077fb;}
</style>
</head>
<body>

<div id="main">
  
</div>

<div id="ManageSchool" class="tabcontent">
  <h3>Manage Universities </h3>
  <a href="ManageUniversities.jsp" target="_self">Manage Universities</a>
</div>

<div id="ManageUser" class="tabcontent">
  <h3>Manage Users </h3>
  <a style="font-size:18px" href="ManageUsers.jsp" target="_self">Manage Users</a>
</div>


<div id="Logout" class="tabcontent">
  <h3>Logout</h3>
    <a style="font-size:18px"  href="Logout_action.jsp" target="_self">Logout of CMC System </a>
</div>


<button style="font-size:18px" class="tablink" onclick="openTab('ManageSchool', this, '#FF6347')" id="defaultOpen" >Manage My Saved Schools</button>
<button style="font-size:18px" class="tablink" onclick="openTab('ManageUser', this, '#00B300')">Manage My Profile</button>
<button style="font-size:18px" class="tablink" onclick="openTab('Logout', this, '#0077fb')">Logout of CMC System</button>


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