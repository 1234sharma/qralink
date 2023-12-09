<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous"></link>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

</head>
<style type="text/css">
body {
	background: #393a3d;
	padding-top: 20vh;
}

form {
	background: #fff;
}

.form-container {
	border-radius: 20px;
	padding: 40px;
}

.imgqra {
	width: 13rem;
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
				<form class="form-container" id="loginForm">
					<!--Binding the label and input together-->
					<div class="form-group">
						<h4 class="text-center font-weight-bold">
							<img class="imgqra" alt=""
								src="https://www.qralink.com/images/logofolder/1651963462.png">
						</h4>
						<label for="Inputuser1">Username</label> <input type="email"
							class="form-control" id="Inputuser1"
							aria-describeby="usernameHelp" placeholder="Enter username">
							<p id="Username-error-message" class="Username-error-message"></p>
					</div>
					<!--Binding the label and input together-->
					<div class="form-group">
						<label for="InputPassword1">Password</label> <input
							type="password" class="form-control" id="InputPassword1"
							placeholder="Password">
							<p id="UserPassword-error-message" class="UserPassword-error-message"></p>
					</div>
					<button type="button" class="btn btn-primary btn-block"
						onclick="passdatatocontroller(); validateUsername(); validateUserPassword(); ">Sign in</button>
					<div class="form-footer">
						<p>
							Don't have an account? <a href="/registerPage">Sign Up</a>
						</p>
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
					console.log(data);
					// Ajax call completed successfully
					if(data=="seller"){
					window.location = "http://localhost:8089/";
					}
					else if(data=="buyer"){
					window.location = "http://localhost:8089/";
					}
					else if(data=="admin"){
					window.location = "http://localhost:8089/";
					}
					else
						{
						sweetAlert("Invalid User", "Something Went wrong", "error");
						}
				},
				error : function(res) {

					// Some error in ajax call
					alert("Please Try Again "+ res.responseText +"  " +res.status);
				}

			});

	}
  
  		function validateUsername() {
    		  var UsernameInput   = document.querySelector('#Inputuser1');
     		 var Username  = UsernameInput.value;
    		  var errorMessage = document.querySelector('#Username-error-message');
      
    		  if (Username.trim() === '') {
    		  	errorMessage.innerText = 'Please enter a Username';
    		  	errorMessage.style.color = 'red';
    		  	UsernameInput.style.borderColor = 'red';
    		  } else {
        			errorMessage.innerText = '';
        			UsernameInput.style.borderColor = '';
   		   }
		  }
  		
 		 function validateUserPassword() {
    		  var UserPasswordInput = document.querySelector('#InputPassword1');
     		 var UserPassword = UserPasswordInput.value;
     		 var errorMessage = document.querySelector('#UserPassword-error-message');
      
    		  if (UserPassword.trim() === '') {
      			errorMessage.innerText = 'Please enter a Paassword';
      			errorMessage.style.color = 'red';
      			UserPasswordInput.style.borderColor = 'red';
    		  } else {
    		      errorMessage.innerText = '';
    		      UserPasswordInput.style.borderColor = '';
     		 }
  		}
 		 
 		var loginForm = document.getElementById('loginForm');

 		loginForm.addEventListener('input', function (event) {
 		    if (event.target.id === 'Inputuser1') {
 		        validateUsername();
 		    } else if (event.target.id === 'InputPassword1') {
 		        validateUserPassword();
 		    }
 		});
 		
 		loginForm.addEventListener('keydown', function (event) {
 	        if (event.key === 'Enter') {
 	            passdatatocontroller();
 	            validateUsername();
 	            validateUserPassword();
 	        }
 	    });
  </script>
</body>
</html>
