<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

<!-- <button id="edit-button" onclick="getEDTData()"> EDIT_Upload</button> -->
<!--  <div id="myModal" class="modal"> -->

  <!-- Modal content -->
<!--   <div class="modal-content"> -->
<!--     <span class="close">&times;</span> -->
  <form>
  <label for="fname1">Sr.No :</label><br>
  <input type="text" id="srname" name="fname1" readonly><br>
  <label for="fname1">Categories :</label><br>
  <input type="text" id="catname" name="fname1"><br>
  <label for="lname1">File Upload:</label><br>
  <input id="fileupload1" type="file" name="fileupload1" /> 
  <button id="upload-button" onclick="edtUpdate()"> Upload </button>
<!--   <input type="submit" value="Submit"> -->
  </form>
<!--   </div> -->
<!--   </div> -->
  
<!--   <script> 
// // Get the modal
// var modal = document.getElementById("myModal");

// // Get the button that opens the modal
// var btn = document.getElementById("edt_btn");

// // Get the <span> element that closes the modal
// var span = document.getElementsByClassName("close")[0];

// // When the user clicks the button, open the modal 


// // When the user clicks on <span> (x), close the modal
// span.onclick = function() {
//   modal.style.display = "none";
// }

// // When the user clicks anywhere outside of the modal, close it
// window.onclick = function(event) {
//   if (event.target == modal) {
//     modal.style.display = "none";
//   }
// }
<!-- </script> -->
<script>
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


</script>
  
  
</body>
</html>