<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html xmlns:th="http://www.thymeleaf.org">
<head> 
<title> Ajax Spring File Upload Example </title> 

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css"
	rel="stylesheet">
	<link
	href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap4.min.css"
	rel="stylesheet">
	
	<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
	<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap4.min.js"></script>
	<script 
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
</style>
</head> 
<body>
<form enctype= >
  <label for="fname">Categories :</label><br>
  <input type="text" id="fname" name="Add catogories"><br>
  <label for="lname">File Upload:</label><br>
  <input id="fileupload" type="file" name="fileupload" /> 
<button id="upload-button" onclick="uploadFile()"> Upload </button>
<!--   <input type="submit" value="Submit"> -->
</form> 
<br>
<button id="view-button" onclick="getTblData()"> VIEW </button>
<div id="data_table">
<table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>subSr.No</th>
                <th>CATEGORY_NAME</th>
                <th>CATEGORY_IMG</th>
                <th>CATEGORY_FLAG</th>
                <th>CATEGORY_OP</th>
            </tr>
        </thead>
        <tbody id="table_body">
                  </tbody>
        </table>
</div>

<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
 <form>
  <label for="fname1">Sr.No :</label><br>
  <input type="text" id="srname" name="fname1" readonly><br>
  <label for="fname1">Categories :</label><br>
  <input type="text" id="catname" name="fname1"><br>
  <label for="lname1">File Upload:</label><br>
  <input id="fileupload1" type="file" name="fileupload1" /> 
  <button id="upload-button" onclick="edtUpdate()"> Upload </button>
</form>
</div>
</div>

<script>
// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("edt_btn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];


// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>
<script>
var table=null;
// var catid;
// var catname;
// var catimg;
// var catflg;

function uploadFile() {
//  var val = document.querySelector('fname').value;
var val = document.getElementById("fname").value;
	console.log("val",val);
  let formData = new FormData();  
//  formData.append("cat_name", cat_name);
formData.append("catName", val);
  formData.append("file", fileupload.files[0]);
  
  let response = fetch('/upload', {
    method: "POST", 
    body: formData
  }); 

  if (response.status == 200) {
    alert("File successfully uploaded.");
  }
//   getTblData();
}


function getTblData(){	
// 	 $.ajax({
// 	        type: "GET",
// 	        url:'/getdatatable',
// 	        async: false,
// 	        success: function (response) {
// 	       	 for(var i = 0, size = response.length; i < size ; i++) {  
// 	       		 var item = response[i];
// 	                console.log("item vaules",item)
// // 	                 var option = document.createElement("option");
// // 	                 tableNM = item.TBLNM;
// // 	                 console.log("table name :"+tableNM);
// // 	                 tableDT = item.DTCOLMN;
// // 	                 console.log("table date :"+tableDT);
// // 	                 option.setAttribute("value",item.TBLNM);
// // 	                 option.setAttribute("colmn",item.DTCOLMN);
// // 	  	   		     $("#dropdown1").append(option);
// // 	            	 $(option).append(item.TBLDESC);  
// 	      		  }	
// 	       	}
// 			 });
	
	 $.ajax({
       type: "GET",
       url:'/getdatatable',
       success: function (response) {
    	   console.log("response data :"+response)
      	 for(var i = 0, size = response.length; i < size ; i++) {  
      		 console.log("response :"+response.length);
      		 var item = response[i];
               console.log("item vaules:"+item);
               var tr = document.createElement("tr");
   		          $("#example").append(tr);
   		       		$(tr).append("<td class=nr1>"+item.CATEGORYID+"</td>");
// 			   		$(tr).append("<td class=nr2 target=_blank><button id=catnmbtn onclick=getCategoryNm()>"+item.CATEGORY_NAME+"</button></td>");
					$(tr).append("<td><a id=catnmbtn onclick=getCategoryNm() href=subcategories >"+item.CATEGORY_NAME+"</a></td>");
			   		$(tr).append("<td class=nr3>"+item.CATEGORY_IMG+"</td>");
			   		$(tr).append("<td class=nr4>"+item.CATEGORY_Flag+"</td>");
			   		$(tr).append("<td><button id=aprove_btn onclick=approveBtn('"+item.CATEGORYID+"','"+item.CATEGORY_NAME+"','"+item.CATEGORY_IMG+"','"+item.CATEGORY_Flag+"')>Approve</button><button id=edt_btn onclick=editBtn('"+item.CATEGORYID+"','"+item.CATEGORY_NAME+"')>EDIT</button><button id=dlt_btn onclick=deleteBtn('"+item.CATEGORYID+"')>DELETE</button></td>");
						
     		  }	
    	   table =  new DataTable('#example');
    	   
    	   table.on('click', 'tbody tr', (e) => {
    		    let classList = e.currentTarget.classList;
    		 
    		    if (classList.contains('selected')) {
    		        classList.remove('selected');
    		    }
    		    else {
    		        table.rows('.selected').nodes().each((row) => row.classList.remove('selected'));
    		        classList.add('selected');
    		    }
    		});
    	   

      	},
	 error: function (response) {
         console.log("error");
     }
  });  

		 }
		 
function approveBtn(CATEGORYID,CATEGORY_NAME,CATEGORY_IMG,CATEGORY_Flag){
	console.log("Aakash");
	console.log("Your data is: "+CATEGORYID);
		
	 $.post("/getflgdata",{CATEGORYID})
	  	.done(function(retColData){
	  		   colmnData = retColData;
	  		   console.log("list of colmns :"+colmnData.length);
	  		 	location.reload();
	 	 })
	  	.fail(function(xhr, status, error){
	  		 console.log("error");
	 	});
}
// 	$('#example tbody').on('click', 'tr', function () {
//         var tableData = $(this).children("td").map(function () {
//             return $(this).text();
//         }).get();

//         console.log("Your data is: " + $.trim(tableData[0]) + " , " + $.trim(tableData[1]) + " , " + $.trim(tableData[2])+ " , " + $.trim(tableData[3])+ " , " + $.trim(tableData[4]));
// 		catid = $.trim(tableData[0]);
// 		console.log("Your data is: "+catid);
// 		catname = $.trim(tableData[1]);
// 		console.log("Your data is: "+catname);
// 		catimg = $.trim(tableData[2]);
// 		console.log("Your data is: "+catimg);
// 		catflg = $.trim(tableData[3]);
// 		console.log("Your data is: "+catflg);
//     });
function edtUpdate(){
	var srval= "1";
// 	var srval = document.getElementById("srname").value;
// 	console.log("val",srval);
	var catval = document.getElementById("catname").value;
	console.log("catName",catval);
  let formData = new FormData();  
//  formData.append("cat_name", cat_name);
formData.append("srNo", srval);
formData.append("catName", catval);
formData.append("file", fileupload1.files[0]);
  
  let response = fetch('/editupdate', {
    method: "POST", 
    body: formData
  }); 
}

function editBtn(CATEGORYID,CATEGORY_NAME){
// 	modal.style.display = "block";
	console.log("Chintu");
	document.getElementById("srname").setAttribute('value', CATEGORYID );
	document.getElementById("catname").setAttribute('value', CATEGORY_NAME );
	modal.style.display = "block";
}

function deleteBtn(CATEGORYID){
	console.log("Jaiswal");
	console.log("Your data is: "+CATEGORYID);
	
	 $.post("/getDelete",{CATEGORYID})
	  	.done(function(retColData){
	  		   colmnData = retColData;
	  		   console.log("list of colmns :"+colmnData.length);
	  		 	location.reload();
	 	 })
	  	.fail(function(xhr, status, error){
	  		 console.log("error");
	 	});
}

function getCategoryNm(){
// 	alert("Button Clicked.....");
	 window.location.href='subcategories';
}


</script>

</body> 
</html>