<%@page import="java.util.ArrayList"%>
<%@page import="com.qraAdmin.model.ProductBean"%>
<%@page import="java.util.List"%>
<html>
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
<body>
	<%@ include file="/responsivenav.jsp"%>
	<div class="card mt-4 px-5" style="margin-left: 260px">
		<div class="card-header">Product List</div>
		<div class="card-body">
			<div class="container-fluid " style="text-align:center ">
				<table class="table border display nowra text-center"
					id="datatable" style="width:40%">
					<thead class="thead-dark b" style="color: black;">
						<tr>
							<th scope="col">productId</th>
							<th scope="col">productName</th>
							<th scope="col">brandName</th>
							<th scope="col">productPrice</th>
							<th scope="col">productdesc</th>
							<th scope="col">orderqnt</th>
							<th scope="col">pic1</th>
							<th scope="col">pic2</th>
							<th scope="col">productlive</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<script>
		var table;
		$(document).ready(function() {
			table = $('#datatable').DataTable({
			    "sScrollX": true,
			});

			tabledataload();

		});

		function tabledataload() {
			$
					.ajax({
						url : "/getProductListOfCurrentUser",
						type : 'GET',
						success : function(data) {
							console.log(data);
							for (let i = 0; i < data.length; i++) {
								$('#datatable').DataTable().row
										.add(
												[
														data[i].productId,
														data[i].productName,
														data[i].brandName,
														data[i].productPrice,
														data[i].productdesc,
														data[i].orderqnt,
														'<img alt="img" src="data:image/jpg;base64,'+data[i].image1encode64+'" width="100" height="100"/>',
														'<img alt="img" src="data:image/jpg;base64,'+data[i].image2encode64+'" width="100" height="100"/>',
														data[i].productlive,
														'<button  class="btn btn-danger" onclick="deleteuser(`'
																+ data[i].uname
																+ '`)">DELETE</button>' ])
										.draw();

							}

						},
						error : function() {
							console.log('error');
						}
					});
		}

		function deleteuser(val) {
			alert("calling delete for username " + val);

			$.ajax({
				url : "/lakshdeep/deleteuser/" + val,
				type : 'DELETE',
				success : function(data) {
					alert(data.status)
					table.clear().draw();
					tabledataload();

				},
				error : function() {
					console.log('error');
				}
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
	<script>
		$(document).ready(function() {
			$('#datatable').DataTable();
		});
	</script>
</body>
</html>