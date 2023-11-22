<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Admin</title>
<link href="https://fonts.googleapis.com/css?family=Muli"
	rel="stylesheet">
<link href="https://www.qralink.com/admin/eagle_admin_v2/style.css"
	rel="stylesheet">
<link
	href="https://www.qralink.com/admin/eagle_admin_v2/bower_components/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://www.qralink.com/admin/eagle_admin_v2/bower_components/metisMenu/dist/metisMenu.min.css"
	rel="stylesheet">
<link
	href="https://www.qralink.com/admin/eagle_admin_v2/dist/css/timeline.css"
	rel="stylesheet">
<link
	href="https://www.qralink.com/admin/eagle_admin_v2/dist/css/sb-admin-2.css"
	rel="stylesheet">
<link
	href="https://www.qralink.com/admin/eagle_admin_v2/bower_components/morrisjs/morris.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"
	media="all">
<link
	href="https://www.qralink.com/admin/js/morris/morris-0.4.3.min.css"
	rel="stylesheet" />


<style media="all" type="text/css">
@import "https://www.qralink.com/admin/css/css/admin.css";
</style>

</head>
<body>
	<br />
	<div class="panel panel-default">
		<div class=" panel-heading clearfix">
			<h2 class="page-header">Change Admin and Password</h2>
		</div>
		<div class="panel-body">
			<div class="sct_right">
				<div id="product_list">
					<div class="table_wrapper">
						<div class="table_wrapper_inner ">
							<table
								class="listing form table-responsive table-striped table-bordered table-responsive"
								cellpadding="0" cellspacing="0" border width="100%">
								<form name="change_password" action method="post">
									<tr>
										<td class="first" width="150"><strong>Username</strong></td>
										<td class="last"><input type="text"
											class="text form-control" id="admin1" value="admin"
											name="username" /> <span class="star"></span></td>
										<td width="205"><div class="star" id="alert_username"></div></td>
									</tr>
									<tr class="bg">
										<td class="first"><strong>Current password</strong></td>
										<td class="last"><input type="password"
											class="text form-control" id="cur_password"
											name="cur_password" /> <span class="star"></span></td>
										<td><div class="star" id="alert_cur_password"></div></td>
									</tr>
									<tr class="bg">
										<td class="first"><strong>Password</strong></td>
										<td class="last"><input type="password" id="password"
											class="text form-control" name="password" /> <span
											class="star"></span></td>
										<td><div class="star" id="alert_password"></div></td>
									</tr>
									<tr>
										<td class="first"><strong>Retype Password</strong></td>
										<td class="last"><input type="password" id="ret_password"
											class="text form-control" name="ret_password" /></td>
										<td><div class="star" id="alert_ret_password"></div></td>
									</tr>
							</table>
							<br />
							<div class="row">
								<div class="buttons">
									<span class="button send_form_btn"><span></span>&ensp;&ensp;
										<input name="btn_changepassword" class="btn btn-primary"
										type="submit" value="Submit"
										onclick="return Valid_admin_info(document.change_password);" />
									</span>
								</div>
							</div>
							</form>
						</div>
					</div>
</body>
</html>