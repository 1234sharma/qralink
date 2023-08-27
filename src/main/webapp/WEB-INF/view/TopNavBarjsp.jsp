<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<link
	href="${pageContext.request.contextPath}/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
	rel="stylesheet" />

<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet">
<style type="text/css">
#centerinfo{
margin: auto;
  width: 50%;
  border: 3px solid green;
  padding: 10px;
}
.tblinfo{
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

.tdinfo, .thinfo {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

.trinfo:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>
<!-- Content Start -->
        <div class="content">
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-secondary navbar-dark sticky-top px-4 py-0">
                <a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
                    <h2 class="text-primary mb-0"><i class="fa fa-user-edit"></i></h2>
                </a>
                <a href="#" class="sidebar-toggler flex-shrink-0">
                    <i class="fa fa-bars"></i>
                </a>
<!--                 <form class="d-none d-md-flex ms-4"> -->
<!--                     <input class="form-control bg-dark border-0" type="search" placeholder="Search"> -->
<!--                 </form> -->
                <div class="navbar-nav align-items-center ms-auto">
<!--                     <div class="nav-item dropdown"> -->
<!--                         <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"> -->
<!--                             <i class="fa fa-envelope me-lg-2"></i> -->
<!--                             <span class="d-none d-lg-inline-flex">Message</span> -->
<!--                         </a> -->
<!--                         <div class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0"> -->
<!--                             <a href="#" class="dropdown-item"> -->
<!--                                 <div class="d-flex align-items-center"> -->
<!--                                     <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;"> -->
<!--                                     <div class="ms-2"> -->
<!--                                         <h6 class="fw-normal mb-0">Jhon send you a message</h6> -->
<!--                                         <small>15 minutes ago</small> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </a> -->
<!--                             <hr class="dropdown-divider"> -->
<!--                             <a href="#" class="dropdown-item"> -->
<!--                                 <div class="d-flex align-items-center"> -->
<!--                                     <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;"> -->
<!--                                     <div class="ms-2"> -->
<!--                                         <h6 class="fw-normal mb-0">Jhon send you a message</h6> -->
<!--                                         <small>15 minutes ago</small> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </a> -->
<!--                             <hr class="dropdown-divider"> -->
<!--                             <a href="#" class="dropdown-item"> -->
<!--                                 <div class="d-flex align-items-center"> -->
<!--                                     <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;"> -->
<!--                                     <div class="ms-2"> -->
<!--                                         <h6 class="fw-normal mb-0">Jhon send you a message</h6> -->
<!--                                         <small>15 minutes ago</small> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </a> -->
<!--                             <hr class="dropdown-divider"> -->
<!--                             <a href="#" class="dropdown-item text-center">See all message</a> -->
<!--                         </div> -->
<!--                     </div> -->
                    <div class="nav-item dropdown">
<!--                         <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"> -->
<!--                             <i class="fa fa-bell me-lg-2"></i> -->
<!--                             <span class="d-none d-lg-inline-flex">Notificatin</span> -->
<!--                         </a> -->
                        <div class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
<!--                             <a href="#" class="dropdown-item"> -->
<!--                                 <h6 class="fw-normal mb-0">Profile updated</h6> -->
<!--                                 <small>15 minutes ago</small> -->
<!--                             </a> -->
<!--                             <hr class="dropdown-divider"> -->
<!--                             <a href="#" class="dropdown-item"> -->
<!--                                 <h6 class="fw-normal mb-0">New user added</h6> -->
<!--                                 <small>15 minutes ago</small> -->
<!--                             </a> -->
<!--                             <hr class="dropdown-divider"> -->
<!--                             <a href="#" class="dropdown-item"> -->
<!--                                 <h6 class="fw-normal mb-0">Password changed</h6> -->
<!--                                 <small>15 minutes ago</small> -->
<!--                             </a> -->
<!--                             <hr class="dropdown-divider"> -->
<!--                             <a href="#" class="dropdown-item text-center">See all notifications</a> -->
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <img class="rounded-circle me-lg-2" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                            <span class="d-none d-lg-inline-flex">John Doe</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">My Profile</a>
                            <a href="#" class="dropdown-item">Settings</a>
                            <a href="#" class="dropdown-item">Log Out</a>
                        </div>
                    </div>
                </div>
            </nav>
            </div>
</body>
</html>