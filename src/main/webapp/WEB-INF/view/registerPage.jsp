<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <link rel="shortcut icon" href="images/logofolder/1651963462.png">
<link rel="stylesheet" href="https://www.qralink.com/assets/new_css/css/exp_stlye_common.css">
<link rel="stylesheet" href="https://www.qralink.com/assets/css/shop-homepage.css">
<link href="https://www.qralink.com/assets/eagle_theme/typehead/typeahead.js-bootstrap.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://www.qralink.com/assets/new_css/css/awesomplete.css" />
<link rel="stylesheet" type="text/css" href="https://www.qralink.com/assets/new_css/css/bootstrap.css" media="all" />
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" media="all" />
<link rel="stylesheet" type="text/css" href="https://www.qralink.com/assets/themes/css/style1.css" media="all" />
<link rel="stylesheet" href="https://www.qralink.com/assets/new_css/css/style1.css" />
<link rel="stylesheet" type="text/css" href="https://www.qralink.com/assets/new_css/css/style.css" media="all" />
<link rel="stylesheet" type="text/css" href="https://www.qralink.com/assets/new_css/css/tradestyle.css" media="all" />
<link rel="stylesheet" href="https://www.qralink.com/assets/new_css/css/bootstrap-tagsinput.css" />
<link rel="stylesheet" type="text/css" href="https://www.qralink.com/assets/new_css/css/style2.css" media="all" />
<link rel="stylesheet" type="text/css" href="https://www.qralink.com/assets/new_css/css/lumos.css" media="all" />
<link rel="stylesheet" type="text/css" href="https://www.qralink.com/assets/themes/css/mtree.css" media="all" />
<title>B2B Portal  Manufacturers Suppliers Exporters Importers -Qralink.com</title>
<style>
	html,body{
  background-color: #d7d6d6;
}
.prbs-inner-left{
	text-align:center;
}
.prba-list{
	margin-top: 55px;
}
.prba-img i{
	font-size: 55px;
	color: #2b75ff;
	margin-bottom: 10px;
    margin-top: 10px;
}
.point-head{
	font-weight: 600;
    color: #2b75ff;
}
.top_set_box{
	border-radius: 11px;
}
</style>
</head>
<body>
<div class="rg_backgroud" style="margin-top: 19px;">
<div class="rg_back1">
<h3 class="rg_heading">Welcome to qralink Pvt Ltd</h3>
<p>Join Millions Trading On one of the world's Largest B2B E-Commerce Platform !</p>
<p></p>
</div>
<div id="main-body" ng-app="DialToMe">
<div class="container" ng-controller="ZipCodeCtrl" ng-init="getCountryList()">
<div class="row"> 
<div id="main-col" class="col-md-12 register_form">
<div class="top_set_box">
<div class="col-md-9" style="border-right: 1px solid;">
<form name="registration" action="https://www.qralink.com/registration-1.html" method="post" autocomplete="off" enctype="multipart/form-data">

<div class="block_div white_back_div">
<div class="col-md-12">
<h5> <span id="name" style="display:block;">Account Type</span></h5>
</div>

<div class="col-md-1">
<div class="radio radio-primary">
<input type="radio" name="type" id="radio1" value="P" onclick="inputtaghiddenandshow()">
<label for="radio1">Buyers</label>
</div>
</div>
<div class="col-md-1">
<div class="radio radio-primary">
<input type="radio" name="type" value="C" id="company_profile" onclick="showhiddeninputtag()">
<label for="company_profile">&nbsp;Seller</label>
</div>
</div>
</div>
<div class="block_div">
<div class="col-md-12">
<h5> <span id="name" style="display:block;">Personal Information</span> <span id="name1" style="display:none;">Company Information</span></h5>
</div>
<div class="col-md-4">
<div class="form-group">
<label class="name_sm">Name:<span style="color:#F00">*</span></label>
<input class="form-control" required placeholder="Full Name" type="text" id="uname" name="uname" value>
<span id="nameid"></span>
<input type="hidden" required name="package_id" value="1" />
</div>
</div>
<span id="company_name" style="visibility: hidden; display: none;">
<div class="col-md-4">
<div class="form-group" >
<label class="name_sm">Company Name:<span style="color:#F00">*</span></label>
<input class="form-control" placeholder="Company Name" type="text" value name="company_name" id="company_name_p">
<div id="company_name_id" style="color:#FF0000;"></div>
</div>
</div>
</span>
<div class="col-md-4">
<div class="form-group">
<label class="name_sm">Mobile : <span style="color:#F00">*</span></label>
<input class="form-control " required type="text" placeholder="Mobile number" value name="mobile" id="mobile" oninput="this.value = this.value.replace(/[^0-9.]/g, ''); this.value = this.value.replace(/(\..*)\./g, '$1');">
<span id="mobid"></span>
<span id="mobid" style="color:#FF0000;"></span>
</div>
</div>
<div class="col-md-4">
<div class="form-group">
<label class="name_sm"> Email: <span style="color:#F00">*</span></label>
<input class="form-control" required placeholder="Email Address" type="email" value id="email1" name="email">
<span id="email"></span>

</div>
</div>
<div class="col-md-4">
<div class="form-group">
<label class="name_sm">Confirm Email:<span style="color:#F00">*</span></label>
<input class="form-control" required placeholder="Confirm Email" type="email" value name="email2" id="email21">
<div id="email2" style="color:#FF0000;"></div>
</div>
</div>
</div>
<div class="block_div white_back_div">
<div class="col-md-12">
<h5>Address Information</h5>
</div>
<div class="col-md-4">
<div class="form-group">
<label class="name_sm">Country:<span style="color:#F00">*</span></label>
<select name="country" id="country" class="form-control" onchange="select_state(this.value);">
<option class="le-input" value>Select Country</option><option value="Afghanistan" class="le-input">Afghanistan</option><option value="Albania" class="le-input">Albania</option><option value="Algeria" class="le-input">Algeria</option><option value="American Samoa" class="le-input">American Samoa</option><option value="Andorraa" class="le-input">Andorraa</option><option value="Angola" class="le-input">Angola</option><option value="Antigua And Barbuda" class="le-input">Antigua And Barbuda</option><option value="Argentina" class="le-input">Argentina</option><option value="Armenia" class="le-input">Armenia</option><option value="Aruba" class="le-input">Aruba</option><option value="Australia" class="le-input">Australia</option><option value="Austria" class="le-input">Austria</option><option value="Azerbaijan" class="le-input">Azerbaijan</option><option value="Bahamas The" class="le-input">Bahamas The</option><option value="Bahrain" class="le-input">Bahrain</option><option value="Bangladesh" class="le-input">Bangladesh</option><option value="Belarus" class="le-input">Belarus</option><option value="Belgium" class="le-input">Belgium</option><option value="Belize" class="le-input">Belize</option><option value="Benin" class="le-input">Benin</option><option value="Bermuda" class="le-input">Bermuda</option><option value="Bhutan" class="le-input">Bhutan</option><option value="Bolivia" class="le-input">Bolivia</option><option value="Botswana" class="le-input">Botswana</option><option value="Brazil" class="le-input">Brazil</option><option value="Brunei" class="le-input">Brunei</option><option value="Bulgaria" class="le-input">Bulgaria</option><option value="Burkina Faso" class="le-input">Burkina Faso</option><option value="Burundi" class="le-input">Burundi</option><option value="Cambodia" class="le-input">Cambodia</option><option value="Cameroon" class="le-input">Cameroon</option><option value="Canada" class="le-input">Canada</option><option value="Cape Verde" class="le-input">Cape Verde</option><option value="Central African Republic" class="le-input">Central African Republic</option><option value="Chad" class="le-input">Chad</option><option value="Chile" class="le-input">Chile</option><option value="China" class="le-input">China</option><option value="Colombia" class="le-input">Colombia</option><option value="Comoros" class="le-input">Comoros</option><option value="Congo" class="le-input">Congo</option><option value="Congo The Democratic Republic Of The" class="le-input">Congo The Democratic Republic Of The</option><option value="Cook Islands" class="le-input">Cook Islands</option><option value="Costa Rica" class="le-input">Costa Rica</option><option value="Croatia (Hrvatska)" class="le-input">Croatia (Hrvatska)</option><option value="Cuba" class="le-input">Cuba</option><option value="Cyprus" class="le-input">Cyprus</option><option value="Czech Republic" class="le-input">Czech Republic</option><option value="Denmark" class="le-input">Denmark</option><option value="Djibouti" class="le-input">Djibouti</option><option value="Dominican Republic" class="le-input">Dominican Republic</option><option value="East Timor" class="le-input">East Timor</option><option value="Ecuador" class="le-input">Ecuador</option><option value="Egypt" class="le-input">Egypt</option><option value="El Salvador" class="le-input">El Salvador</option><option value="Equatorial Guinea" class="le-input">Equatorial Guinea</option><option value="Eritrea" class="le-input">Eritrea</option><option value="Estonia" class="le-input">Estonia</option><option value="Ethiopia" class="le-input">Ethiopia</option><option value="Faroe Islands" class="le-input">Faroe Islands</option><option value="Fiji Islands" class="le-input">Fiji Islands</option><option value="Finland" class="le-input">Finland</option><option value="France" class="le-input">France</option><option value="French Guiana" class="le-input">French Guiana</option><option value="French Polynesia" class="le-input">French Polynesia</option><option value="French Southern Territories" class="le-input">French Southern Territories</option><option value="Gabon" class="le-input">Gabon</option><option value="Gambia The" class="le-input">Gambia The</option><option value="Georgia" class="le-input">Georgia</option><option value="Germany" class="le-input">Germany</option><option value="gfsdf" class="le-input">gfsdf</option><option value="Ghana" class="le-input">Ghana</option><option value="Gibraltar" class="le-input">Gibraltar</option><option value="Greece" class="le-input">Greece</option><option value="Greenland" class="le-input">Greenland</option><option value="grf" class="le-input">grf</option><option value="Guadeloupe" class="le-input">Guadeloupe</option><option value="Guam" class="le-input">Guam</option><option value="Guatemala" class="le-input">Guatemala</option><option value="Guernsey and Alderney" class="le-input">Guernsey and Alderney</option><option value="Guinea" class="le-input">Guinea</option><option value="Guinea-Bissau" class="le-input">Guinea-Bissau</option><option value="Guyana" class="le-input">Guyana</option><option value="Haiti" class="le-input">Haiti</option><option value="Honduras" class="le-input">Honduras</option><option value="Hungary" class="le-input">Hungary</option><option value="Iceland" class="le-input">Iceland</option><option value="India" class="le-input">India</option><option value="Indonesia" class="le-input">Indonesia</option><option value="Iran" class="le-input">Iran</option><option value="Iraq" class="le-input">Iraq</option><option value="Ireland" class="le-input">Ireland</option><option value="Israel" class="le-input">Israel</option><option value="Italy" class="le-input">Italy</option><option value="Jamaica" class="le-input">Jamaica</option><option value="Japan" class="le-input">Japan</option><option value="Jersey" class="le-input">Jersey</option><option value="Jordan" class="le-input">Jordan</option><option value="Kazakhstan" class="le-input">Kazakhstan</option><option value="Kenya" class="le-input">Kenya</option><option value="Kiribati" class="le-input">Kiribati</option><option value="Korea North" class="le-input">Korea North</option><option value="Korea South" class="le-input">Korea South</option><option value="Kuwait" class="le-input">Kuwait</option><option value="Kyrgyzstan" class="le-input">Kyrgyzstan</option><option value="Laos" class="le-input">Laos</option><option value="Latvia" class="le-input">Latvia</option><option value="Lebanon" class="le-input">Lebanon</option><option value="Lesotho" class="le-input">Lesotho</option><option value="Liberia" class="le-input">Liberia</option><option value="Libya" class="le-input">Libya</option><option value="Liechtenstein" class="le-input">Liechtenstein</option><option value="Lithuania" class="le-input">Lithuania</option><option value="Luxembourg" class="le-input">Luxembourg</option><option value="Macau S.A.R." class="le-input">Macau S.A.R.</option><option value="Macedonia" class="le-input">Macedonia</option><option value="Madagascar" class="le-input">Madagascar</option><option value="Malawi" class="le-input">Malawi</option><option value="Malaysia" class="le-input">Malaysia</option><option value="Maldives" class="le-input">Maldives</option><option value="Mali" class="le-input">Mali</option><option value="Malta" class="le-input">Malta</option><option value="Man (Isle of)" class="le-input">Man (Isle of)</option><option value="MANA" class="le-input">MANA</option><option value="Marshall Islands" class="le-input">Marshall Islands</option><option value="Martinique" class="le-input">Martinique</option><option value="Mauritania" class="le-input">Mauritania</option><option value="Mauritius" class="le-input">Mauritius</option><option value="Mayotte" class="le-input">Mayotte</option><option value="Mexico" class="le-input">Mexico</option><option value="Micronesia" class="le-input">Micronesia</option><option value="Moldova" class="le-input">Moldova</option><option value="Monaco" class="le-input">Monaco</option><option value="Mongolia" class="le-input">Mongolia</option><option value="Montserrat" class="le-input">Montserrat</option><option value="Morocco" class="le-input">Morocco</option><option value="Mozambique" class="le-input">Mozambique</option><option value="Myanmar" class="le-input">Myanmar</option><option value="Namibia" class="le-input">Namibia</option><option value="Nauru" class="le-input">Nauru</option><option value="Nepal" class="le-input">Nepal</option><option value="Netherlands Antilles" class="le-input">Netherlands Antilles</option><option value="Netherlands The" class="le-input">Netherlands The</option><option value="New Caledonia" class="le-input">New Caledonia</option><option value="New Zealand" class="le-input">New Zealand</option><option value="Nicaragua" class="le-input">Nicaragua</option><option value="Niger" class="le-input">Niger</option><option value="Nigeria" class="le-input">Nigeria</option><option value="Niue" class="le-input">Niue</option><option value="Northern Mariana Islands" class="le-input">Northern Mariana Islands</option><option value="Norway" class="le-input">Norway</option><option value="Oman" class="le-input">Oman</option><option value="Pakistan" class="le-input">Pakistan</option><option value="Palau" class="le-input">Palau</option><option value="Palestinian Territory Occupied" class="le-input">Palestinian Territory Occupied</option><option value="Panama" class="le-input">Panama</option><option value="Papua new Guinea" class="le-input">Papua new Guinea</option><option value="Paraguay" class="le-input">Paraguay</option><option value="Peru" class="le-input">Peru</option><option value="Philippines" class="le-input">Philippines</option><option value="Poland" class="le-input">Poland</option><option value="Portugal" class="le-input">Portugal</option><option value="Puerto Rico" class="le-input">Puerto Rico</option><option value="Qatar" class="le-input">Qatar</option><option value="Reunion" class="le-input">Reunion</option><option value="Romania" class="le-input">Romania</option><option value="Russia" class="le-input">Russia</option><option value="Rwanda" class="le-input">Rwanda</option><option value="s" class="le-input">s</option><option value="Saint Helena" class="le-input">Saint Helena</option><option value="Saint Lucia" class="le-input">Saint Lucia</option><option value="Saint Pierre and Miquelon" class="le-input">Saint Pierre and Miquelon</option><option value="Saint Vincent And The Grenadines" class="le-input">Saint Vincent And The Grenadines</option><option value="Samoa" class="le-input">Samoa</option><option value="San Marino" class="le-input">San Marino</option><option value="Sao Tome and Principe" class="le-input">Sao Tome and Principe</option><option value="Saudi Arabia" class="le-input">Saudi Arabia</option><option value="Senegal" class="le-input">Senegal</option><option value="Seychelles" class="le-input">Seychelles</option><option value="Sierra Leone" class="le-input">Sierra Leone</option><option value="Singapore" class="le-input">Singapore</option><option value="Slovakia" class="le-input">Slovakia</option><option value="Slovenia" class="le-input">Slovenia</option><option value="Smaller Territories of the UK" class="le-input">Smaller Territories of the UK</option><option value="Solomon Islands" class="le-input">Solomon Islands</option><option value="Somalia" class="le-input">Somalia</option><option value="South Africa" class="le-input">South Africa</option><option value="Spain" class="le-input">Spain</option><option value="Sri Lanka" class="le-input">Sri Lanka</option><option value="sthsrfgth" class="le-input">sthsrfgth</option><option value="Sudan" class="le-input">Sudan</option><option value="Suriname" class="le-input">Suriname</option><option value="Svalbard And Jan Mayen Islands" class="le-input">Svalbard And Jan Mayen Islands</option><option value="Swaziland" class="le-input">Swaziland</option><option value="Sweden" class="le-input">Sweden</option><option value="Switzerland" class="le-input">Switzerland</option><option value="Syria" class="le-input">Syria</option><option value="Taiwan" class="le-input">Taiwan</option><option value="Tajikistan" class="le-input">Tajikistan</option><option value="Tanzania" class="le-input">Tanzania</option><option value="test" class="le-input">test</option><option value="Thailand" class="le-input">Thailand</option><option value="Togo" class="le-input">Togo</option><option value="Tokelau" class="le-input">Tokelau</option><option value="Tonga" class="le-input">Tonga</option><option value="Trinidad And Tobago" class="le-input">Trinidad And Tobago</option><option value="Tunisia" class="le-input">Tunisia</option><option value="Turkey" class="le-input">Turkey</option><option value="Turkmenistan" class="le-input">Turkmenistan</option><option value="Tuvalu" class="le-input">Tuvalu</option><option value="Uganda" class="le-input">Uganda</option><option value="Ukraine" class="le-input">Ukraine</option><option value="United Arab Emirates" class="le-input">United Arab Emirates</option><option value="United Kingdom" class="le-input">United Kingdom</option><option value="United States" class="le-input">United States</option><option value="Uruguay" class="le-input">Uruguay</option><option value="Uzbekistan" class="le-input">Uzbekistan</option><option value="Vanuatu" class="le-input">Vanuatu</option><option value="Venezuela" class="le-input">Venezuela</option><option value="Vietnam" class="le-input">Vietnam</option><option value="Virgin Islands (British)" class="le-input">Virgin Islands (British)</option><option value="Wallis And Futuna Islands" class="le-input">Wallis And Futuna Islands</option><option value="Western Sahara" class="le-input">Western Sahara</option><option value="Yemen" class="le-input">Yemen</option><option value="Yugoslavia" class="le-input">Yugoslavia</option><option value="Zambia" class="le-input">Zambia</option><option value="Zimbabwe" class="le-input">Zimbabwe</option></select> <span class="text text-danger" id="country" style="color:#F00"> </span>
 </div>
</div>
<div class="col-md-4">
<label class="name_sm">State:<span style="color:#F00">*</span></label>
<span id="state_change">
<select name="state" id="state" class="form-control" required>
<option value selected="selected" class="le-input">Please select state</option>
</select>
</span>
<span id="state_error" style="color:#F00"></span>
</div>
<div class="col-md-4">
<label class="name_sm">City:<span style="color:#F00">*</span></label>
<span id="city_change"><select name="city" id="city" class="form-control" required>
<option value selected="selected" class="le-input">Please select city</option></select>
</span>
<span id="city_error" style="color:#F00"></span>
</div>
</div>
<div class="block_div">
<div class="col-md-12">
<h5>Security Information</h5>
</div>
<div class="col-md-6">
<div class="form-group">
<label class="name_sm">Password:<span style="color:#F00">*</span></label>
<input class="form-control" required placeholder="Password" type="password" name="pass" id="pass" value>
<span id="passid"></span>
<div id="passid" style="color:#ff0000"></div>
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<label class="name_sm">Password <span style="color:#F00">*</span></label>
<input class="form-control " required placeholder="Re-Type Password" type="password" name="repass" id="repass" value>
<span id="repassid"></span>
<div id="repassid" style="color:#ff0000"></div>
</div>
</div>
<input type="hidden" name="paid" value="F" />
<div class="col-md-12" id="cate_list" style="display:block;">
<table width="100%">
<tr>
 
<input type="hidden" value="0" name="count_cats" id="count_cats" /></td>
<td><div id="cat_counts" style="color:#FF0000;"></div></td>
</tr>
</table>
</div>
<div class="col-md-12">
<label class="name_sm">Verification Code<span style="color:#F00">*</span></label>
<input class="form-control " required placeholder="Enter Verification Code" type="text" name="security_code" id="cpcode" value>
<span id="alert_security"></span>
<br/>
<div id="alert_security" style="color:#FF0000;"></div>
<span id="captcha"><img src="https://www.qralink.com/assets/captcha/1685632923.3226.jpg" style="width: 150px; height: 30px; border: 0;" alt=" " /></span>&nbsp;
<span id="refresh_captcha">&nbsp; <img border="0" alt src="https://www.qralink.com//images/refresh.png"></span> </div>
</div>
<div class="col-md-12">
<input type="checkbox" name="vehicle" value="Car" checked required>
<a href="https://www.qralink.com/termscondition.html"><small style=" font-size:13px;">I have Accpeted All Terms & Condition</small></a> & <a href="https://www.qralink.com/privacy_policy.html"><small style=" font-size:13px;">Privacy Policy</small></a><br>
</div>
<div class="col-md-12"> <br/>
<input type="hidden" name="open_type" value="WEB">
<input type="submit" class="btn btn-danger btn-large btn-lg text-center" value="Join Now" name="submit" onclick="return Valid_registration(document.registration);" />
</div>
</form>
</div>
<div class="col-md-3">
<div class="prbs-inner-left">
<h2 class="prbs-heading">Why Join Qralink ?</h2>
<h4>
Get connected with Long Business Chain
</h4>
<ul class="prba-list">
<li>
<div class="prba-img">
<i class="fa-solid fa-building"></i>
</div>
<div class="point-head">
3.5 Lakh companies worldwide
</div>
<div class="prba-info">
Start your Buisness with 3.5 Lakh companies worldwide.
</div>
<hr/>
</li>
<li>
<div class="prba-img">
<i class="fa-solid fa-users"></i>
</div>
<div class="point-head">
3.5 Lakh companies worldwide
</div>
<div class="prba-info">
Start your Buisness with 3.5 Lakh companies worldwide.
</div>
<hr/>
</li>
<li>
<div class="prba-img">
<i class="fa-solid fa-handshake-angle"></i>
</div>
<div class="point-head">
Over 40 Thousands Buyers
</div>
<div class="prba-info">
Over 40 Thousands of Buyers are Registered with us.
</div>
<hr/>
</li>
<li>
<div class="prba-img">
<i class="fa-solid fa-briefcase"></i>
</div>
<div class="point-head">
Over 3000+ Business Inquiries.
</div>
<div class="prba-info">
Generated More than 300 Business Inquiries each Month.
</div>
<hr/>
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
    function showhiddeninputtag(){
        document.getElementById('company_name').style.cssText = 'visibility: visible'; 
    }
    function inputtaghiddenandshow(){
        document.getElementById('company_name').style.cssText = 'visibility: hidden';
        document.getElementById('company_name').style.cssText = 'display: none';
    }
</script>
</body>
</html>

    