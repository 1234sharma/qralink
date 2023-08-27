<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Admin</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Eagle Technosys">
<link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">
<link href="https://www.qralink.com/admin/eagle_admin_v2/style.css" rel="stylesheet">
<link href="https://www.qralink.com/admin/eagle_admin_v2/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://www.qralink.com/admin/eagle_admin_v2/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
<link href="https://www.qralink.com/admin/eagle_admin_v2/dist/css/timeline.css" rel="stylesheet">
<link href="https://www.qralink.com/admin/eagle_admin_v2/dist/css/sb-admin-2.css" rel="stylesheet">
<link href="https://www.qralink.com/admin/eagle_admin_v2/bower_components/morrisjs/morris.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" media="all">
<link href="https://www.qralink.com/admin/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
<style media="all" type="text/css">@import "https://www.qralink.com/admin/css/css/admin.css";</style>
</head>
<body>
<br/>
<div class="panel panel-default">
<div class="panel-heading">
<div class="row">
<div class="col-lg-12">
<h2 class="page-header">Add Package Service</h2>
</div>
</div>
</div>
<div class="panel-body">
<div class="sct_right">
<div id="product_list">
<div class="table_wrapper">
<div class="table_wrapper_inner">
<table class="table-striped table-bordered table-responsive" cellpadding="0" cellspacing="0" width="100%" border="0">
<form name="package_service" action method="post" enctype="multipart/form-data">
<tr>
<td class="first" width="30%"><strong>Service Name :</strong></td>
<td class="last"><input type="text" class="text form-control"  id="service_name1" name="service_name" size="55" value /><span class="system positive star"></span></td>
</tr>
<tr>
<td colspan="2"><div id="alert_service_name" align="center"> </div></td></tr>
<tr>
<td colspan="3">
<tr>
<td class="first" width="30%" colspan="10"><strong>Packages :-</strong></td>
</tr>
<tr>
<td class="last" width="30%">Free</td>
<td> <label for="service_type"><b>Yes</b></label>
<input type="radio" checked="checked" id="service_type" name="service_type_1" value="Y" />
<label for="service_type2"><b>No</b></label> <input type="radio" id="service_type2" name="service_type_1" value="N" /> </td> </tr>
</td>
</tr>
<tr>
<td class="last" width="30%">Silver</td>
<td> <label for="service_type_02"><b>Yes</b></label>
<input type="radio" checked="checked" id="service_type_02" name="service_type_2" value="Y" />
<label for="service_type_03"><b>No</b></label> <input type="radio" id="service_type_02" name="service_type_2" value="N" /> </td> </tr>
</td>
</tr>
<tr>
<td class="last" width="30%">Gold</td>
<td> <label for="03"><b>Yes</b></label>
<input type="radio" checked="checked" name="service_type_3" id="03" value="Y" />
<label for="service_type_03"><b>No</b></label> <input type="radio" id="service_type_03" name="service_type_3" value="N" /> </td> </tr>
</td>
</tr>
<tr>
<td class="last" width="30%">Platinum</td>
<td> <label for="service_type_04"><b>Yes</b></label>
<input type="radio" checked="checked" id="service_type_04" name="service_type_4" value="Y" />
<label for="service_type_5"><b>No</b></label> <input type="radio"  id="service_type_5" name="service_type_4" value="N" /> </td> </tr>
</td>
</tr>
<tr>
<td colspan="2">
<div class="row">
<div class="buttons" style="margin-left:5px;">
<span class="button send_form_btn">
<input name="id" type="hidden" value />
<input name="submit_service" class="btn btn-primary" type="submit" value="Save" />
</span>
</div>
</div>
</td>
</tr>
</form>
</table>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>