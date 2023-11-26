<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</head>
<body onload="loadCategory();getSubCatTbl()">
<%@ include file="/responsivenav.jsp"%>
<div class="container mt-3">
<div class="center">
		<table>
			<tr>
				<th>CATEGORIES NAME:</th>
				<td><select id="dropdown" onchange="showCategoriesData()">
						<option value="none" selected disabled>SELECT CATEGORY</option>
				</select></td>
			</tr>
		</table>
	</div><br>
<form>
  <label for="subfname">SubCategories :</label><br>
  <input type="text" id="fname" name="Sub_catogories"><br><br>
  <label for="sublname">File Upload:</label><br>
  <input id="fileupload" type="file" name="fileupload" /> 
<button id="sub-upload-button" onclick="uploadSubCatFile()"> Upload </button>
<!--   <input type="submit" value="Submit"> -->
</form> 
<!-- <button id="view-button" onclick="getSubCatTbl()"> VIEW </button> -->
<br>
<div id="data_table">
<table id="sub-cat-table" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>SUBSr.No</th>
                <th>SUBCATEGORY_NAME</th>
                <th>SUBCATEGORY_IMG</th>
                <th>SUBCATEGORY_FLAG</th>
                <th>SUBCATEGORY_OP</th>
            </tr>
        </thead>
        <tbody id="table_body">
                  </tbody>
        </table>
</div>

	<div class="modal" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<label for="fname1">Sr.No :</label><br> <input type="text"
							id="srnum" name="fname1" readonly><br> <label
							for="fname1">SubCategories :</label><br> <input type="text"
							id="subcatname" name="fname1"><br> <label
							for="lname1">File Upload:</label><br> <input
							id="fileupload1" type="file" name="fileupload1" />
						<button id="upload-button" onclick="edtUpdate()">UPDATE</button>
					</form>

				</div>
			</div>
		</div>
	</div>
</div>

<script>

//Get the modal
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

function uploadSubCatFile() {
	console.log("In Sub Categories....");
//  var val = document.querySelector('fname').value;
// 	var cat_val = document.getElementById("fname").value;
// 	console.log("catvalue",cat_val);
	var val = document.getElementById("fname").value;
	console.log("val",val);
  	let formData = new FormData();  
// 	formData.append("cat_name", cat_val);
	formData.append("subcatName", val);
  	formData.append("file", fileupload.files[0]);
  	formData.append("categoryId", selectcategory);
  	
  let response = fetch('/subupload', {
    method: "POST", 
    body: formData
  }); 

  if (response.status == 200) {
    alert("File successfully uploaded.");
  }
//   getTblData();
}
</script>
<script>
function loadCategory() {
	$.ajax({
		type : "GET",
		url : "/getcategories",
		success : function(data) {
			// Ajax call completed successfully
			select = document.getElementById('categoryid');
			for (var i = 0; i < data.length; i++) {
	      		 console.log("response :"+data.length);
	      		 var item = data[i];
	               console.log("item vaules:"+item);
	               var option = document.createElement("option");
	               option.value=item.categoryid;
	               option.innerHTML=item.category_NAME;
	               $("#dropdown").append(option);
			}
		},
		error : function(data) {
			// Some error in ajax call
			alert("Please Try Again");
		}

	});
}

function getCatName(){
	 $.ajax({
	       type: "GET",
	       url:'/getcatnm',
	       success: function (response) {
	    	   console.log("response data :"+response)
	      	 for(var i = 0, size = response.length; i < size ; i++) { 
	      		 console.log("response :"+response.length);
	      		 var item = response[i];
	               console.log("item vaules:"+item);
	               var option = document.createElement("option");
	               option.value=item.categoryId;
	               option.innerHTML=item.category_NAME;
	               $("#dropdown").append(option);
				}
	   	},
		 error: function (response) {
	         console.log("error");
	     }
	  });  
}

var selectcategory=null;
function showCategoriesData(){
	var selectBox = document.getElementById("dropdown");
	selectcategory = selectBox.options[selectBox.selectedIndex].value;
	console.log("selectcategory :"+selectcategory);
}


function getSubCatTbl(){
	
	 $.ajax({
	       type: "GET",
	       url:'/getSubdatatable',
	       success: function (response) {
	    	   console.log("response data :"+response)
	    		 for(var i = 0, size = response.length; i < size ; i++) {  
		      		 console.log("response :"+response.length);
		      		 var item = response[i];
		               console.log("SubCategory item vaules:"+item.SUB_CATEGORY_ID);
		               var tr = document.createElement("tr");
		   		          $("#sub-cat-table").append(tr);
		   		       		$(tr).append("<td>"+item.sub_CATEGORY_ID+"</td>");
					   		$(tr).append("<td target=_blank><a  id=subcatnmbtn onclick=getSubCategoryNm() href=microcategories>"+item.sub_CATEGORY_NAME+"</a></td>");
					   		$(tr).append("<td><img alt='img' src='data:image/jpg;base64,"+item.base64EncodedImage+"' width='100' height='100'/></td>");
					   		$(tr).append("<td>"+item.sub_CATEGORY_FLG+"</td>");
					   		$(tr).append("<td><button id=aprove_btn onclick=approveBtn('"+item.sub_CATEGORY_ID+"')>Approve</button><button id=edt_btn onclick=editBtn('"+item.sub_CATEGORY_ID+"','"+item.sub_CATEGORY_NAME+"')>EDIT</button><button id=dlt_btn onclick=deleteBtn('"+item.sub_CATEGORY_ID+"')>DELETE</button></td>");
								
					}
		    	   table =  new DataTable('#sub-cat-table');
		    	   
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

function approveBtn(SUB_CATEGORY_ID){
	console.log("Aakash");
	console.log("Your SUB_CATEGORY_ID is: "+SUB_CATEGORY_ID);
		
	 $.post("/getapprovedata",{SUB_CATEGORY_ID})
	  	.done(function(retColData){
	  		   colmnData = retColData;
	  		   console.log("list of colmns :"+colmnData.length);
	  		 	location.reload();
	 	 })
	  	.fail(function(xhr, status, error){
	  		 console.log("error");
	 	});
}


function edtUpdate(){
	var srval= "1";
// 	var srval = document.getElementById("srname").value;
// 	console.log("val",srval);
	var subcatval = document.getElementById("subcatname").value;
	console.log("subcatname : "+subcatval);
  let formData = new FormData();  
//  formData.append("cat_name", cat_name);
formData.append("srnum", srval);
formData.append("subcatname", subcatval);
formData.append("file", fileupload1.files[0]);
  
  let response = fetch('/getSubEdit', {
    method: "POST", 
    body: formData
  }); 
}

function editBtn(SUB_CATEGORY_ID,SUB_CATEGORY_NAME){
// 	modal.style.display = "block";
	console.log("Chintu");
	document.getElementById("srnum").setAttribute('value', SUB_CATEGORY_ID );
	document.getElementById("subcatname").setAttribute('value', SUB_CATEGORY_NAME );
	modal.style.display = "block";
}


function deleteBtn(SUB_CATEGORY_ID){
	console.log("Jaiswal");
	console.log("Your data is: "+SUB_CATEGORY_ID);
	
	 $.post("/getSubDelete",{SUB_CATEGORY_ID})
	  	.done(function(retColData){
	  		   colmnData = retColData;
	  		   console.log("list of colmns :"+colmnData.length);
	  		 	location.reload();
	 	 })
	  	.fail(function(xhr, status, error){
	  		 console.log("error");
	 	});
}



function getSubCategoryNm(){
	 window.location.href='microcategories';
}
</script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script src="https://checkout.razorpay.com/v1/checkout.js"></script>

	<script src="https://code.jquery.com/jquery-3.6.0.js"
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
		crossorigin="anonymous"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

	<script
		src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js">
		
	</script>
	<script
		src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js">
		
	</script>
</body>
</html>