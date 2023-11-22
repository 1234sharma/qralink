<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
</head>
<body onload="getCatName();getSubCatTbl()">
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

<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
 <form>
  <label for="fname1">Sr.No :</label><br>
  <input type="text" id="srnum" name="fname1" readonly><br>
  <label for="fname1">SubCategories :</label><br>
  <input type="text" id="subcatname" name="fname1"><br>
  <label for="lname1">File Upload:</label><br>
  <input id="fileupload1" type="file" name="fileupload1" /> 
  <button id="upload-button" onclick="edtUpdate()"> UPDATE </button>
</form>
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
  	formData.append("categoryName", selectcategory);
  	
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
	               $("#dropdown").append(option);
	              	 $(option).append(item);
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
		   		       		$(tr).append("<td>"+item.SUB_CATEGORY_ID+"</td>");
					   		$(tr).append("<td target=_blank><a  id=subcatnmbtn onclick=getSubCategoryNm() href=microcategories>"+item.SUB_CATEGORY_NAME+"</a></td>");
					   		$(tr).append("<td>"+item.SUB_CATEGORY_IMG+"</td>");
					   		$(tr).append("<td>"+item.SUB_CATEGORY_FLG+"</td>");
					   		$(tr).append("<td><button id=aprove_btn onclick=approveBtn('"+item.SUB_CATEGORY_ID+"')>Approve</button><button id=edt_btn onclick=editBtn('"+item.SUB_CATEGORY_ID+"','"+item.SUB_CATEGORY_NAME+"')>EDIT</button><button id=dlt_btn onclick=deleteBtn('"+item.SUB_CATEGORY_ID+"')>DELETE</button></td>");
								
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

</body>
</html>