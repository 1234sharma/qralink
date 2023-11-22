<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- <script src="https://code.jquery.com/jquery-3.7.0.js"></script> -->
<script 
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<button id="view-button" onclick="getTblData()"> VIEW </button>
<script>
function getTblData(){	
// 	$.ajax({
//      type: "GET",
//      url:'/dataTable',
//      success: function (response) {
//   	   console.log("response data :"+response)
//     	 for(var i = 0, size = response.length; i < size ; i++) {  
//     		 console.log("response :"+response.length);
//     		 var item = response[i];
//              console.log("item vaules:"+item);
//     	 }
//      }
//     });

	let response = fetch('/dataTable', {
	    method: "GET"
	  
	  }); 
	 console.log("response data :"+response);
}
</script>

</body>
</html>