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
<body onload="getsubCatName();getMicroCatTbl()">

<div class="center">
		<table>
			<tr>
				<th>SUBCATEGORIES NAME:</th>
				<td><select id="microdropdown" onchange="showSubCategoriesData()">
						<option value="none" selected disabled>SELECT SUBCATEGORY</option>
				</select></td>
			</tr>
		</table>
	</div><br>
<form>
  <label for="microfname">MicroCategories :</label><br>
  <input type="text" id="fname" name="Micro_Catogories"><br><br>
  <label for="microlname">File Upload:</label><br>
  <input id="fileupload" type="file" name="fileupload" /> 
<button id="micro-upload-button" onclick="uploadMicroCatFile()"> Upload </button>
<!--   <input type="submit" value="Submit"> -->
</form> 
<!-- <button id="view-button" onclick="getMicroCatTbl()"> VIEW </button> -->
<br>
<div id="data_table">
<table id="micro-cat-table" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>Sr.No</th>
                <th>MICROCATEGORY_NAME</th>
                <th>MICROCATEGORY_IMG</th>
                <th>MICROCATEGORY_FLAG</th>
                <th>MICROCATEGORY_OP</th>
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
  <label for="fname1">MicroCategories :</label><br>
  <input type="text" id="catname" name="fname1"><br>
  <label for="lname1">File Upload:</label><br>
  <input id="fileupload1" type="file" name="fileupload1" /> 
  <button id="upload-button" onclick="edtUpdate()"> Upload </button>
</form>
</div>
</div>

<script>
function uploadMicroCatFile() {
	console.log("In Micro Categories....");
//  var val = document.querySelector('fname').value;
// 	var cat_val = document.getElementById("fname").value;
// 	console.log("catvalue",cat_val);
	var val = document.getElementById("fname").value;
	console.log("val",val);
  	let formData = new FormData();  
	formData.append("selectSubCategory", selectSubcategory);
	formData.append("microcatName", val);
  	formData.append("file", fileupload.files[0]);
  
  let response = fetch('/microcatupload', {
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
function getsubCatName(){
	 $.ajax({
	       type: "GET",
	       url:'/getsubcatnm',
	       success: function (response) {
	    	   console.log("response data :"+response)
	      	 for(var i = 0, size = response.length; i < size ; i++) {  
	      		 console.log("response :"+response.length);
	      		 var item = response[i];
	               console.log("item vaules:"+item);
	               var option = document.createElement("option");
	               $("#microdropdown").append(option);
	              	 $(option).append(item);
				}
	   	},
		 error: function (response) {
	         console.log("error");
	     }
	  });  
}
 var selectmicrocategory =null;
function showSubCategoriesData(){
	var selectBox = document.getElementById("microdropdown");
	selectSubcategory = selectBox.options[selectBox.selectedIndex].value;
	console.log("selectSubcategory :"+selectSubcategory);
}

function getMicroCatTbl(){
	
	 $.ajax({
	       type: "GET",
	       url:'/getMicrodatatable',
	       success: function (response) {
	    	   console.log("response data :"+response)
	    		 for(var i = 0, size = response.length; i < size ; i++) {  
		      		 console.log("response :"+response.length);
		      		 var item = response[i];
		               console.log("SubCategory item vaules:"+item.MICRO_CATEGORY_ID);
		               var tr = document.createElement("tr");
		   		          $("#micro-cat-table").append(tr);
		   		       		$(tr).append("<td>"+item.MICRO_CATEGORY_ID+"</td>");
					   		$(tr).append("<td target=_blank><button id=subcatnmbtn onclick=getSubCategoryNm()>"+item.MICRO_CATEGORY_NAME+"</button></td>");
					   		$(tr).append("<td>"+item.MICRO_CATEGORY_IMG+"</td>");
					   		$(tr).append("<td>"+item.MICRO_CATEGORY_FLG+"</td>");
					   		$(tr).append("<td><button id=aprove_btn onclick=approveBtn('"+item.MICRO_CATEGORY_ID+"')>Approve</button><button id=edt_btn onclick=editBtn('"+item.CATEGORYID+"','"+item.CATEGORY_NAME+"')>EDIT</button><button id=dlt_btn onclick=deleteBtn('"+item.MICRO_CATEGORY_ID+"')>DELETE</button></td>");
								
					}
		    	   table =  new DataTable('#micro-cat-table');
		    	   
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


function approveBtn(MICRO_CATEGORY_ID){
	console.log("Aakash");
	console.log("Your SUB_CATEGORY_ID is: "+MICRO_CATEGORY_ID);
		
	 $.post("/getMicroApprove",{MICRO_CATEGORY_ID})
	  	.done(function(retColData){
	  		   colmnData = retColData;
	  		   console.log("list of colmns :"+colmnData.length);
	  		 	location.reload();
	 	 })
	  	.fail(function(xhr, status, error){
	  		 console.log("error");
	 	});
}


function deleteBtn(MICRO_CATEGORY_ID){
	console.log("Jaiswal");
	console.log("Your data is: "+MICRO_CATEGORY_ID);
	
	 $.post("/getMicroDelete",{MICRO_CATEGORY_ID})
	  	.done(function(retColData){
	  		   colmnData = retColData;
	  		   console.log("list of colmns :"+colmnData.length);
	  		 	location.reload();
	 	 })
	  	.fail(function(xhr, status, error){
	  		 console.log("error");
	 	});
}

</script>

</body>
</html>