<%@include file="verifyLogin.jsp"%>
<%@include file= "TranslateFeature.jsp" %>
<br>
<html>
<head>

<style>
body {font-family: "Helvetica", sans-serif;}

.tablink {
    background-color: #454545;
    color: white;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    font-size: 18px;
    width: 33%;
}

.tablink:hover, .tablink:focus {
    border-radius:15px;border:5px solid black;
    padding: 15px;
}

/* Style the tab content */
.tabcontent {
    color: white;
    display: none;
    padding: 50px;
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
  <a style="font-size:18px" href="ManageUniversities.jsp" target="_self">Manage Universities</a>
</div>

<div id="ManageUser" class="tabcontent">
  <h3>Manage Users </h3>
  <a style="font-size:18px" href="ManageUsers.jsp" target="_self">Manage Users</a>
</div>


<div id="Logout" class="tabcontent">
  <h3>Logout</h3>
    <astyle="font-size:18px"  href="Logout_action.jsp" target="_self">Logout of CMC System </a>
</div>

<!--old colors were #FF6347,  #00B300, #0077fb -->
<button class="tablink" onclick="openTab('ManageSchool', this, '#454545')" id="defaultOpen">Manage Universities</button>
<button class="tablink" onclick="openTab('ManageUser', this, '#454545')">Manage Users</button>
<button class="tablink" onclick="openTab('Logout', this, '#454545')">Logout of CMC System</button>

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