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
	<div class="container p-3">
	<div class="card mt-4">
		<div class="card-header">Product List</div>
		<div class="card-body">
			<div class="container-fluid " style="text-align: center">
				<table class="table border display nowra text-center" id="datatable"
					style="width: 40%">
					<thead class="thead-dark b" style="color: black;">
						<tr>
							<th scope="col">productName</th>
							<th scope="col">Quantity</th>
							<th scope="col">QuantityType</th>
							<th scope="col">Email</th>
							<th scope="col">PersonName</th>
							<th scope="col">Mobile</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>	
	<script>
		var table;
		$(document).ready(function() {
			table = $('#datatable').DataTable({
				"sScrollX" : true,
			});

			tabledataload();

		});

		function tabledataload() {
			$
					.ajax({
						url : "/availableApprovedCustomerQuote",
						type : 'GET',
						success : function(data) {
							console.log(data);
							for (let i = 0; i < data.length; i++) {
								$('#datatable').DataTable().row
										.add(
												[
														data[i].product_name,
														data[i].quantiry,
														data[i].quantity_type,
														data[i].email,
														data[i].person_name, 
														data[i].mobile])
										.draw();

							}

						},
						error : function() {
							console.log('error');
						}
					});
		}

		function deleteuser(val) {
			var result = confirm("Are you sure ? Want to delete?" + val);
			if (result) {
				$.ajax({
					url : "deleteProduct/" + val,
					type : 'DELETE',
					success : function(data) {
						if (data == -1) {
							window.location = "http://localhost:8089/qrahome";
						} else if (data == 0) {
							alert("Unable To Delete The Record...");
						} else {
							alert("Deleted Succesfully")
							table.clear().draw();
							tabledataload();
						}
					},
					error : function() {
						console.log('error');
					}
				});

			} else {
				return;
			}
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