<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" --%>
<%--     pageEncoding="ISO-8859-1"%> --%>
<!DOCTYPE html>
<!-- Designined by CodingLab | www.youtube.com/codinglabyt -->
<html>
  <head>
  <link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css"/>
<!--   <script src='https://kit.fontawesome.com/a076d05399.js' > -->
  <style>

 	 body{
 		overflow-x: scroll;
  	}
  	.dataTables_wrapper {
  	 margin-left: 20px;
 		 margin-right: 20px;
  	}
  	.home-content .sales-boxes {
 		 padding: 20px;
 		
  	}
   
  @media (max-width: 1150px)
	.home-content .sales-boxes .box {
   	 	overflow-x: hidden;
	} 
nav .sidebar-button i {
    font-size: 10px;
    margin-right: 100px;
}
</style> 
    <meta charset="UTF-8">
    <title> QRALINK </title>
    <link href="https://netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/Dashboardstyle.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
   
<!--    onload="ajexCallForFetchDataFromDb(); cardfunction()" its in body tag -->
<body > 

  <div class="sidebar">
    <div class="logo-details">
<!--       <i class='bx bxl-c-plus-plus'></i> -->
      <img style="height: 80px; width: 70%; margin-left: 30px" 
	 				src="https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.qralink.com%2Fimages%2Flogofolder%2F1651963462.png&tbnid=Y8MGNUIS0Xj3nM&vet=12ahUKEwik8uCMmoyBAxWg6DgGHRV7B9YQMygAegQIARBJ..i&imgrefurl=https%3A%2F%2Fqralink.com%2F&docid=m33UOdn2_ldp5M&w=2650&h=650&q=qralink.com%20image&ved=2ahUKEwik8uCMmoyBAxWg6DgGHRV7B9YQMygAegQIARBJ">
    </div>
      <ul class="nav-links">
        <li>
          <a id="dashboard" onclick="openNav('dashboard')" class="active">
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name" style="margin-left: 10px">DASHBOARD</span>
          </a>
        </li>
        <li>
          <a onclick="openNav('changepassword')">
            <i class='bx bx-box' ></i>
            <span class="links_name">Change Password</span>
          </a>
        </li>
        <li>
          <a onclick="openNav('addcategories')">
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">ADD CATEGORIES</span>
          </a>
        </li>
        <li>
          <a onclick="openNav('mastertable')">
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">ADD SUB CATEGORIES</span>
          </a>
        </li>
        <li>
          <a onclick="openNav('mastertable')">
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">ADD MICRO CATEGORIES</span>
          </a>
        </li>
<!--         <li> -->
<!--           <a onclick="openNav('txnviewer')"> -->
<!--             <i class='bx bx-pie-chart-alt-2' ></i> -->
<!--             <span class="links_name">REPAIR SCREEN</span> -->
<!--           </a> -->
<!--         </li> -->

<!--         <li> -->
<!--           <a onclick="openNav('ogdownload')" > -->
<!--             <i class='bx bx-user' ></i> -->
<!--             <span class="links_name">REPORT DOWNLOAD</span> -->
<!--           </a> -->
<!--         </li> -->

         <li>
          <a onclick="openNav('ogdownload')" >
            <i class='bx bx-user' ></i>
            <span class="links_name">LogOut</span>
          </a>
        </li>
      </ul>
   
  </div>
   
  <section class="home-section">
		<nav>
			<div class="sidebar-button">
				<i class='bx bx-menu sidebarBtn'></i>
		
          </div>
         <i class="icon-user icon-large" style="height: 40px; width: 400%; margin-left: 100px">WELCOME USER</i>
       
<!--         <span class="text" style="height: 40px; width: 400%; margin-left: 100px">Admin User</span> -->
				<img style="height: 80px; width: 70%; margin-left: 550px" 
	 				src="https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.qralink.com%2Fimages%2Flogofolder%2F1651963462.png&tbnid=Y8MGNUIS0Xj3nM&vet=12ahUKEwik8uCMmoyBAxWg6DgGHRV7B9YQMygAegQIARBJ..i&imgrefurl=https%3A%2F%2Fqralink.com%2F&docid=m33UOdn2_ldp5M&w=2650&h=650&q=qralink.com%20image&ved=2ahUKEwik8uCMmoyBAxWg6DgGHRV7B9YQMygAegQIARBJ">
	
			<div id="titletrans" class="nav-title"
				style="padding: 10px; font-size: 30px">
			
			</div>
			
			

		</nav>
			
	
		<iframe id="iframe" width="100%" height="700px" style="border-color: transparent;" class="home-content " >
	</iframe>
<%--    <jsp:include page="footer.jsp"/> --%>
	
  </section>
<footer class="page__footer">
        <p style="background-color:  #0A2558; height: 05rem; color:white">Lorem Ipsum Footer Text</p>
    </footer>
		 

	<script>
 
 function openNav (path){
	 
	 var proto = window.location.protocol
	 
	 var host = window.location.host
	 
	 var link = proto+"//"+host+"/"+path
	 
	 var iframe = document.getElementById("iframe");
	 iframe.src = link
	 
 }
  
</script>

</body>
</html>
