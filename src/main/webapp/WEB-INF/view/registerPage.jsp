<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="images/logofolder/1651963462.png">
<link rel="stylesheet"
	href="https://www.qralink.com/assets/new_css/css/exp_stlye_common.css">
<link rel="stylesheet"
	href="https://www.qralink.com/assets/css/shop-homepage.css">
<link
	href="https://www.qralink.com/assets/eagle_theme/typehead/typeahead.js-bootstrap.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://www.qralink.com/assets/new_css/css/awesomplete.css" />
<link rel="stylesheet" type="text/css"
	href="https://www.qralink.com/assets/new_css/css/bootstrap.css"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="https://www.qralink.com/assets/themes/css/style1.css" media="all" />
<link rel="stylesheet"
	href="https://www.qralink.com/assets/new_css/css/style1.css" />
<link rel="stylesheet" type="text/css"
	href="https://www.qralink.com/assets/new_css/css/style.css" media="all" />
<link rel="stylesheet" type="text/css"
	href="https://www.qralink.com/assets/new_css/css/tradestyle.css"
	media="all" />
<link rel="stylesheet"
	href="https://www.qralink.com/assets/new_css/css/bootstrap-tagsinput.css" />
<link rel="stylesheet" type="text/css"
	href="https://www.qralink.com/assets/new_css/css/style2.css"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="https://www.qralink.com/assets/new_css/css/lumos.css" media="all" />
<link rel="stylesheet" type="text/css"
	href="https://www.qralink.com/assets/themes/css/mtree.css" media="all" />
<title>B2B Portal Manufacturers Suppliers Exporters Importers
	-Qralink.com</title>
<style>
html, body {
	background-color: #d7d6d6;
}

.prbs-inner-left {
	text-align: center;
}

.prba-list {
	margin-top: 55px;
}

.prba-img i {
	font-size: 55px;
	color: #2b75ff;
	margin-bottom: 10px;
	margin-top: 10px;
}

.point-head {
	font-weight: 600;
	color: #2b75ff;
}

.top_set_box {
	border-radius: 11px;
}
</style>
</head>
<body>
	<div class="rg_backgroud" style="margin-top: 19px;">
		<div class="rg_back1">
			<h3 class="rg_heading">Welcome to qralink Pvt Ltd</h3>
			<p>Join Millions Trading On one of the world's Largest B2B
				E-Commerce Platform !</p>
			<p></p>
		</div>
		<div id="main-body" ng-app="DialToMe">
			<div class="container" ng-controller="ZipCodeCtrl"
				ng-init="getCountryList()">
				<div class="row">
					<div id="main-col" class="col-md-12 register_form">
						<div class="top_set_box">
							<div class="col-md-9" style="border-right: 1px solid;">
								<form class="joinForm" name="registration" action="register"
									method="post" autocomplete="off" enctype="multipart/form-data">

									<div class="block_div white_back_div">
										<div class="col-md-12">
											<h5>
												<span id="name" style="display: block;">Account Type</span>
											</h5>
										</div>

										<div class="col-md-1">
											<div class="radio radio-primary">
												<input type="radio" name="type" id="radio1" value="buyer"
													onclick="inputtaghiddenandshow()" class="radio1"> <label
													for="radio1">Buyers</label>
											</div>
										</div>
										<div class="col-md-1">
											<div class="radio radio-primary">
												<input type="radio" name="type" value="seller"
													id="company_profile" onclick="showhiddeninputtag()"
													class="radio2"> <label for="company_profile">&nbsp;Seller</label>
											</div>
										</div>

										<div id="AccounttypeError" class="col-md-12 AccounttypeError"></div>

									</div>
									<div class="block_div">
										<div class="col-md-12">
											<h5>
												<span id="name" style="display: block;">Personal
													Information</span> <span id="name1" style="display: none;">Company
													Information</span>
											</h5>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<label class="name_sm">Name:<span
													style="color: #F00">*</span></label> <input class="form-control"
													placeholder="Full Name" type="text" id="uname" name="uname">
												<span id="nameid"></span> <input type="hidden"
													name="package_id" value="1" />
												<p id="name-error-message" class="name-error-message"></p>
											</div>
										</div>
										<span id="company_name"
											style="visibility: hidden; display: none;">
											<div class="col-md-4">
												<div class="form-group">
													<label class="name_sm">Company Name:<span
														style="color: #F00">*</span></label> <input class="form-control"
														placeholder="Company Name" type="text" name="company_name"
														id="company_name_p">
													<div id="company_name_id" style="color: #FF0000;"></div>
													<p id="company-name-error-message"
														class="company-name-error-message"></p>
												</div>
											</div>
										</span>
										<div class="col-md-4">
											<div class="form-group">
												<label class="name_sm">Mobile : <span
													style="color: #F00">*</span></label> <input class="form-control "
													type="text" placeholder="Mobile number" value name="mobile"
													id="mobile"
													oninput="this.value = this.value.replace(/[^0-9.]/g, ''); this.value = this.value.replace(/(\..*)\./g, '$1');">
												<span id="mobid" style="color: #FF0000;"></span>
												<p id="mobile-error-message" class="mobile-error-message"></p>
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<label class="name_sm"> Email: <span
													style="color: #F00">*</span></label> <input class="form-control"
													placeholder="Email Address" type="email" value id="email1"
													name="email"> <span id="email"></span>
												<p id="email-error-message" class="email-error-message"></p>
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<label class="name_sm">Confirm Email:<span
													style="color: #F00">*</span></label> <input class="form-control"
													placeholder="Confirm Email" type="email" value
													name="email2" id="email21">
												<div id="email2" style="color: #FF0000;"></div>
												<p id="confirm-email-error-message"
													class="confirm-email-error-message"></p>
											</div>
										</div>
									</div>
									<div class="block_div white_back_div">
										<div class="col-md-12">
											<h5>Address Information</h5>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<label class="name_sm ">Country:<span
													style="color: #F00">*</span></label> <select name="country"
													id="country" class="form-control country"
													onchange="loadStates();">

													<option selected>Select Country</option>
												</select> <span class="text text-danger" id="country"
													style="color: #F00"> </span>
											</div>
										</div>
										<div class="col-md-4">
											<label class="name_sm ">State:<span
												style="color: #F00">*</span></label> <span id="state_change">
												<select name="state" id="state" class="form-control state"
												onchange="loadCities()">
													<option selected>Select State</option>
											</select>
											</span> <span id="state_error" style="color: #F00"></span>
										</div>
										<div class="col-md-4">
											<label class="name_sm ">City:<span
												style="color: #F00">*</span></label> <span id="city_change"><select
												name="city" id="city" class="form-control city">
													<option selected>Select City</option>
											</select> </span> <span id="city_error" style="color: #F00"></span>
										</div>
									</div>
									<div class="block_div">
										<div class="col-md-12">
											<h5>Security Information</h5>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="name_sm">Password:<span
													style="color: #F00">*</span></label> <input class="form-control"
													placeholder="Password" type="password" name="pass"
													id="pass" value> <span id="passid"></span>
												<div id="passid" style="color: #ff0000"></div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="name_sm">Password <span
													style="color: #F00">*</span></label> <input class="form-control "
													placeholder="Re-Type Password" type="password"
													name="repass" id="repass" value> <span
													id="repassid"></span>
												<div id="repassid" style="color: #ff0000"></div>
											</div>
										</div>
										<input type="hidden" name="paid" value="F" />
										<div class="col-md-12" id="cate_list" style="display: block;">
											<table width="100%">
												<tr>

													<input type="hidden" value="0" name="count_cats"
														id="count_cats" />
													</td>
													<td><div id="cat_counts" style="color: #FF0000;"></div></td>
												</tr>
											</table>
										</div>
<!-- 										<div class="col-md-12"> -->
<!-- 											<label class="name_sm">Verification Code<span -->
<!-- 												style="color: #F00">*</span></label> <input class="form-control " -->
<!-- 												placeholder="Enter Verification Code" type="text" -->
<!-- 												name="security_code" id="cpcode" value> <span -->
<!-- 												id="alert_security"></span> <br /> -->
<!-- 											<div id="alert_security" style="color: #FF0000;"></div> -->
<!-- 											<span id="captcha"><img -->
<!-- 												src="https://www.qralink.com/assets/captcha/1685632923.3226.jpg" -->
<!-- 												style="width: 150px; height: 30px; border: 0;" alt=" " /></span>&nbsp; -->
<!-- 											<span id="refresh_captcha">&nbsp; <img border="0" alt -->
<!-- 												src="https://www.qralink.com//images/refresh.png"></span> -->
<!-- 										</div> -->
									</div>
									<div class="col-md-12">
										<input type="checkbox" name="vehicle" value="Car" checked>
										<a href="https://www.qralink.com/termscondition.html"><small
											style="font-size: 13px;">I have Accpeted All Terms &
												Condition</small></a> & <a
											href="https://www.qralink.com/privacy_policy.html"><small
											style="font-size: 13px;">Privacy Policy</small></a><br>
									</div>
									<div class="col-md-12">
										<br /> <input type="hidden" name="open_type" value="WEB">
										<button type="submit"
											class="btn btn-primary btn-large btn-lg text-center"
											name="submit" onclick="validateName()">Join Now</button>
										<a href="/" class="btn btn-danger btn-large btn-lg text-center">Cancel</a>

									</div>
								</form>
							</div>
							<div class="col-md-3">
								<div class="prbs-inner-left">
									<h2 class="prbs-heading">Why Join Qralink ?</h2>
									<h4>Get connected with Long Business Chain</h4>
									<ul class="prba-list">
										<li>
											<div class="prba-img">
												<i class="fa-solid fa-building"></i>
											</div>
											<div class="point-head">3.5 Lakh companies worldwide</div>
											<div class="prba-info">Start your Buisness with 3.5
												Lakh companies worldwide.</div>
											<hr />
										</li>
										<li>
											<div class="prba-img">
												<i class="fa-solid fa-users"></i>
											</div>
											<div class="point-head">3.5 Lakh companies worldwide</div>
											<div class="prba-info">Start your Buisness with 3.5
												Lakh companies worldwide.</div>
											<hr />
										</li>
										<li>
											<div class="prba-img">
												<i class="fa-solid fa-handshake-angle"></i>
											</div>
											<div class="point-head">Over 40 Thousands Buyers</div>
											<div class="prba-info">Over 40 Thousands of Buyers are
												Registered with us.</div>
											<hr />
										</li>
										<li>
											<div class="prba-img">
												<i class="fa-solid fa-briefcase"></i>
											</div>
											<div class="point-head">Over 3000+ Business Inquiries.
											</div>
											<div class="prba-info">Generated More than 300 Business
												Inquiries each Month.</div>
											<hr />
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	</form>
	<script>
		function showhiddeninputtag() {
			document.getElementById('company_name').style.cssText = 'visibility: visible';
		}
		function inputtaghiddenandshow() {
			document.getElementById('company_name').style.cssText = 'visibility: hidden';
			document.getElementById('company_name').style.cssText = 'display: none';
		}
	</script>
	<script>
    var config = {
        cUrl: 'https://api.countrystatecity.in/v1/countries',
        ckey: 'MzBpZzRNQnNQc0p0bHIzaldZNFFzZUtpbzdpVmpNYVV0UWdDUU00SA=='
    };
    var countrySelect = document.querySelector('.country'),
        stateSelect = document.querySelector('.state'),
        citySelect = document.querySelector('.city');

    function loadCountries() {
        let apiEndPoint = config.cUrl;
        fetch(apiEndPoint, { headers: { "X-CSCAPI-KEY": config.ckey } })
            .then(response => response.json())
            .then(data => {
            	console.log(data);
            	data.forEach(country => {
                    const option = document.createElement('option');
                    option.value = country.iso2;
                    option.textContent = country.name;
                    countrySelect.appendChild(option);
                })
            })
            .catch(error => {
                console.error('Error loading countries:', error);
            });
    }
    
    function loadStates() {
        const selectedCountryCode = countrySelect.value;
        stateSelect.innerHTML = '<option value="">Select State</option>';

        var headers = new Headers();
        headers.append("X-CSCAPI-KEY", config.ckey);
        var url="https://api.countrystatecity.in/v1/countries/"+selectedCountryCode+"/states"
        var requestOptions = {
            method: 'GET',
            headers: headers,
            redirect: 'follow'
        };
		console.log(selectedCountryCode);
        fetch(url, requestOptions)
            .then(response => response.json())
            .then(data => {
            	console.log(data);
            	data.forEach(state => {
             		const option = document.createElement('option');
            		 option.value = state.iso2;
             		option.textContent = state.name;
             		stateSelect.appendChild(option);
             		
             		})
            })
            .catch(error => console.log('error', error));
    }
    
    function loadCities() {
        const selectedCountryCode = countrySelect.value;
        const selectedStateCode = stateSelect.value;
        citySelect.innerHTML = '<option value="">Select City</option>';
        var url="https://api.countrystatecity.in/v1/countries/"+selectedCountryCode+"/states/"+selectedStateCode+"/cities"
        var headers = new Headers();
        headers.append("X-CSCAPI-KEY", config.ckey);

        var requestOptions = {
            method: 'GET',
            headers: headers,
            redirect: 'follow'
        };
		console.log(selectedCountryCode);
		console.log(selectedStateCode);
        fetch(url, requestOptions)
            .then(response => response.json())
            .then(data => {
            	console.log(data);
            	data.forEach(city => {
             		const option = document.createElement('option');
            		 option.value = city.iso2;
             		option.textContent = city.name;
             		citySelect.appendChild(option);
             		
             		})
            })
            .catch(error => console.log('error', error));
    }

    window.onload = loadCountries;
</script>
	<script>



function validateName() {
    var NameInput   = document.querySelector('#uname');
    var Name  = NameInput.value;
    var errorMessage = document.querySelector('.name-error-message');
    console.log("1");
    if (Name.trim() === '') {
    	errorMessage.innerText = 'Please enter a Name';
    	errorMessage.style.color = 'red';
    	NameInput.style.borderColor = 'red';
    	console.log("2");
    	return false;
    } else {
        errorMessage.innerText = '';
        NameInput.style.borderColor = '';
        return false;
    }
}
   
</script>
</body>
</html>

