<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>
  <style type="text/css">
  body{
	background: #393a3d;
	padding-top: 20vh;	
}
form{
    background: #fff;
}
.form-container{
    border-radius: 20px;
    padding: 40px;
}
  .imgqra{
  width:13rem;
  }
  </style>
</head>
 
<body>
<!--Login form starts-->
  <section class="container-fluid">
  <!--row justify-content-center is used for centering the login form-->
    <section class="row justify-content-center">
    <!--Making the form responsive-->
      <section class="col-12 col-sm-6 col-md-4">
        <form class="form-container">
        <!--Binding the label and input together-->
        <div class="form-group">
          <h4 class="text-center font-weight-bold"> <img class="imgqra" alt="" src="https://www.qralink.com/images/logofolder/1651963462.png"> </h4>
          <label for="Inputuser1">Username</label>
           <input type="email" class="form-control" id="Inputuser1" aria-describeby="usernameHelp" placeholder="Enter username">
        </div>
        <!--Binding the label and input together-->
        <div class="form-group">
          <label for="InputPassword1">Password</label>
          <input type="password" class="form-control" id="InputPassword1" placeholder="Password">
        </div>
        <button type="button" class="btn btn-primary btn-block" onclick="passdatatocontroller();">Sign in</button>
        <div class="form-footer">
          <p> Don't have an account? <a href="#">Sign Up</a></p>
        </div>
        </form>
      </section>
    </section>
  </section>
  <script type="text/javascript">
  function passdatatocontroller(){
	  var Username = document.getElementById("Inputuser1").value;
	  var Password = document.getElementById("InputPassword1").value;
    var str = {
      "Username" : Username,
      "Password" : Password,
			};
// 	  console.log(username);
// 	  console.log(password); 
	

$.ajax({
				type : "POST",
				url : "/login",
				data : str, // serializes the form's elements
				success : function(data) {

					// Ajax call completed successfully
					alert("Details submitted succesfully");
					window.location = "http://localhost:8089/addproductPage";
					//alert(data);

				},
				error : function(data) {

					// Some error in ajax call
					alert("Please Try Again");
				}

			});

	}
  </script>
</body>
</html>
