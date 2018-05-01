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
   /* outline: none; */
   /*  cursor: pointer; */
    padding: 14px 16px;
    font-size: 18px;
    width: 25%;
}

.tablink:hover, .tablink:focus , a:focus{
   border:5px solid black;
    padding: 15px;
}

/* Style the tab content */
.tabcontent {
    color: black;
    display: none;
    padding: 50px;
    text-align: center;
}

a {
color: #3344dd;
}

#ManageSchool {background-color:#FFC2C2;}
#ManageUser {background-color:#94FF94;}
#ManageProfile{background-color:cyan}
#Logout {background-color:#FFC861;}
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

<div id="ManageProfile" class="tabcontent">
  <h3>Manage Profile </h3>
  <a style="font-size:18px" href="EditAdmin.jsp" target="_self">Manage Profile</a>
</div>


<div id="Logout" class="tabcontent">
  <h3>Logout</h3>
    <a style="font-size:18px"  href="Logout_action.jsp" target="_self">Logout of CMC System </a>
</div>

<!--old colors were #FF6347,  #00B300, #0077fb -->
<button class="tablink" onclick="openTab('ManageSchool', this, '#454545')" id="defaultOpen">Manage Universities</button>
<button class="tablink" onclick="openTab('ManageUser', this, '#454545')">Manage Users</button>
<button class="tablink" onclick="openTab('ManageProfile', this, '#454545')">Manage Profile</button>
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


 <br>
  <br> 
 <br>
 <h1> Inside the Individual Pages  </h1>
 
 <p> Tab to the menu icon located under the the Translate feature. Open the sidebar menu by selecting the Enter key.    </p> 
 
 <h2>  Keychoices </h2>
 <ul>   
 <li> Close, press 'c'  </li>
 <li> Visit Homepage, press 'a'  </li>
 <li> Search for Schools, press 's'  </li>
 <li> Manage Saved Schools, press 'm'  </li>
 <li> Manage Profile, press 'p'  </li>
 <li> Logout, press 'q'  </li>
 </ul>
 
  <h2> Mac Users </h4>
  <p> If you are using a Mac device for the website, press Control + Alt + keychoice   </p>
  
  <br>
  
   <h2> Windows/Linux  Users </h4>
  <p> If you are using Internet Explorer or Chrome browser for the website, press Alt + keychoice   </p>
  <p> If you are using Firefox browser on Windows device, press Alt +  + Shift + keychoice   </p>


</body>

</html>