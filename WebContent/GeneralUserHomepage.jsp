<%@include file="verifyLogin.jsp"%>
<%@include file= "TranslateFeature.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

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
    width: 25%;
}

.tablink:hover, .tablink:focus {
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


#Search {background-color:#FFC2C2;}
#ManageSchool {background-color:#94FF94;}
#ManageP {background-color:cyan;}
#Logout {background-color:#FFC861;}
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
  <a href="ManageSavedSchools2.jsp" target="_self">Manage Saved Schools</a>
</div>

<div id="ManageP" class="tabcontent">
  <h3>Manage My Profile </h3>
  <a href="EditUser.jsp" target="_self">Manage My Profile</a>
</div>


<div id="Logout" class="tabcontent">
  <h3>Logout</h3>
    <a href="Logout_action.jsp" target="_self">Logout </a>
</div>

<button style="font-size:18px" class="tablink" onclick="openTab('Search', this, '#454545')" id="defaultOpen">Search for A School</button>
<button style="font-size:18px" class="tablink" onclick="openTab('ManageSchool', this, '#454545')">Manage My Saved Schools</button>
<button style="font-size:18px" class="tablink" onclick="openTab('ManageP', this, '#454545')">Manage My Profile</button>
<button style="font-size:18px" class="tablink" onclick="openTab('Logout', this, '#454545')">Logout of CMC System</button>

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
 <li> Manage Users, press 's'  </li>
 <li> Manage Universities, press 'd'  </li>
 <li> Logout, press 'q'  </li>
 </ul>
 
  <h2> Mac Users </h4>
  <p> If you are using a Mac device for the website, press Control + Alt + keychoice   </p>
  

   <h2> Windows/Linux  Users </h4>
  <p> If you are using Internet Explorer or Chrome browser for the website, press Alt + keychoice   </p>
  <p> If you are using Firefox browser on Windows device, press Alt +  + Shift + keychoice   </p>
  
  
 
</body>
</html> 
