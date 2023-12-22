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
<body onload="loadSubCategory();getMicroCatTbl()">
<%@ include file="/responsivenav.jsp"%>
<div class="container mt-3">
<div class="container">
<div class="card mt-4">
		<div class="card-header">Add Micro Categories</div>
		<div class="card-body">

<div class="center">
		<table>
			<tr>
				<th>SubCategory Name:</th>
				<td><select id="microdropdown" onchange="showSubCategoriesData()">
						<option value="none" selected disabled>Select Sub Category</option>
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
                <th>MICROCATEGORY_ID</th>
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
</div>
</div>
</div>
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
 <form>
  <label for="fname1">MICROCATEGORY_ID :</label><br>
  <input type="text" id="srname" name="fname1" readonly><br>
  <label for="fname1">MicroCategories :</label><br>
  <input type="text" id="catname" name="fname1"><br>
  <label for="lname1">File Upload:</label><br>
  <input id="fileupload1" type="file" name="fileupload1" /> 
  <button id="upload-button" onclick="edtUpdate()"> Upload </button>
</form>
</div>
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
function loadSubCategory(categoryid) {
	console.log(categoryid)
	$.ajax({
		type : "GET",
		url : "/getsubcategories",
		success : function(data) {
			// Ajax call completed successfully
			select = document.getElementById('subcategoryid');
			$("#subcategoryid").empty();
			console.log(JSON.stringify(data));
			for (var i = 0; i < data.length; i++) {
				var item = data[i];
	               console.log("item vaules:"+item);
	               var option = document.createElement("option");
	               option.value=item.sub_CATEGORY_ID;
	               option.innerHTML=item.sub_CATEGORY_NAME;
	               $("#microdropdown").append(option);
			}
		},
		error : function(data) {
			// Some error in ajax call
			alert("Please Try Again");
		}

	});

}

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
		   		       		$(tr).append("<td>"+item.micro_CATEGORY_ID+"</td>");
					   		$(tr).append("<td target=_blank><button id=subcatnmbtn onclick=getSubCategoryNm()>"+item.micro_CATEGORY_NAME+"</button></td>");
					   		$(tr).append("<td><img alt='img' src='/uploads/"+item.micro_CATEGORY_IMG+"' width='100' height='100'/></td>");
					   		$(tr).append("<td>"+item.micro_CATEGORY_FLG+"</td>");
					   		$(tr).append("<td><button id=aprove_btn onclick=approveBtn('"+item.micro_CATEGORY_ID+"')>Approve</button><button id=edt_btn onclick=editBtn('"+item.CATEGORYID+"','"+item.CATEGORY_NAME+"')>EDIT</button><button id=dlt_btn onclick=deleteBtn('"+item.micro_CATEGORY_ID+"')>DELETE</button></td>");
								
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