<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html xmlns:th="http://www.thymeleaf.org">
<head> 
<title> Ajax Spring File Upload Example </title> 
</head> 
<body>
	<%@ include file="/responsivenav.jsp"%>
	<div class="container mt-3">
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
<table id="example" class="table border display nowra text-center" style="width:100%">
        <thead>
            <tr>
                <th>CATEGORY_ID</th>
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
							id="srname" name="fname1" readonly><br> <label
							for="fname1">SubCategories :</label><br> <input type="text"
							id="catname" name="fname1"><br> <label
							for="lname1">File Upload:</label><br> <input
							id="fileupload1" type="file" name="fileupload1" />
						<button id="upload-button" onclick="edtUpdate()">UPDATE</button>
					</form>

				</div>
			</div>
		</div>
	</div>



<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
 <form>
  <label for="fname1">Category Id :</label><br>
  <input type="text" id="srname" name="fname1" readonly><br>
  <label for="fname1">Categories :</label><br>
  <input type="text" id="catname" name="fname1"><br>
  <label for="lname1">File Upload:</label><br>
  <input id="fileupload1" type="file" name="fileupload1" /> 
  <button id="upload-button" onclick="edtUpdate()"> Upload </button>
</form>
</div>
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

window.onload = function loadvalues() {
			getTblData();
		}

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
   		       		$(tr).append("<td class=nr1>"+item.categoryid+"</td>");
// 			   		$(tr).append("<td class=nr2 target=_blank><button id=catnmbtn onclick=getCategoryNm()>"+item.CATEGORY_NAME+"</button></td>");
					$(tr).append("<td><a id=catnmbtn onclick=getCategoryNm() href=subcategories >"+item.category_NAME+"</a></td>");
					$(tr).append("<td><img alt='img' src='data:image/jpg;base64,"+item.base64EncodedImage+"' width='100' height='100'/></td>");
			   		$(tr).append("<td class=nr4>"+item.category_Flag+"</td>");
			   		$(tr).append("<td><button id=aprove_btn onclick=approveBtn('"+item.categoryid+"','"+item.category_NAME+"','"+item.category_IMG+"','"+item.category_Flag+"')>Approve</button><button id=edt_btn onclick=editBtn('"+item.categoryid+"','"+item.category_NAME+"')>EDIT</button><button id=dlt_btn onclick=deleteBtn('"+item.categoryid+"')>DELETE</button></td>");
						
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