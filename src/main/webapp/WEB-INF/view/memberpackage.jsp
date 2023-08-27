<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Admin</title>
<link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">
<link href="https://www.qralink.com/admin/eagle_admin_v2/style.css" rel="stylesheet">
<link href="https://www.qralink.com/admin/eagle_admin_v2/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://www.qralink.com/admin/eagle_admin_v2/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
<link href="https://www.qralink.com/admin/eagle_admin_v2/dist/css/timeline.css" rel="stylesheet">
<link href="https://www.qralink.com/admin/eagle_admin_v2/dist/css/sb-admin-2.css" rel="stylesheet">
<link href="https://www.qralink.com/admin/eagle_admin_v2/bower_components/morrisjs/morris.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" media="all">
<link href="https://www.qralink.com/admin/js/morris/morris-0.4.3.min.css" rel="stylesheet" />

<style media="all" type="text/css">@import "https://www.qralink.com/admin/css/css/admin.css";</style>

</head>
<body>
<div id=""><br/>
<div class="panel panel-default" id="mempckge">
<div class=" panel-heading clearfix">
<h2 class="page-header">Member package</h2>

</div>
<div class="panel-body">
<div class="row">
</div>
<div class>
<div class="sct_right">
<div id="product_list">
<div class>
<div class="table_wrapper_inner">
<table class="listing table-striped table-bordered table-responsive" cellpadding="2" cellspacing="0" border="1" style="text-align: center;">
<tr>
<th style="width: 6%;text-align: center;text-align: center;" class="first">Sr.No.</th>
<th style="width: 6%;text-align: center;">Package Name</th>
<th style="width: 5%;text-align: center;">Price</th>
<th style="width: 8%;text-align: center;">Valid Days</th>
<th style="width: 10%;text-align: center;">No. of Product Limit</th>
<th style="width: 10%;text-align: center;">No. of Classifed Limit</th>
<th style="width: 10%;text-align: center;">No. of Trade Leads Limit</th>
<th style="width: 10%;text-align: center;">Access buyer trade Leads</th>
<th style="width: 10%;text-align: center;">Access Sub-Domain</th>
<th style="width: 10%;text-align: center;">No. of Images</th>
<th style="width: 10%;text-align: center;">No. of Youtube Video</th>
<th style="text-align: center;" class="last">Action</th>
</tr>
<tr>
<td class="first style3">1</td>
<td>Free</td>
<td>0</td>
<td>365</td>
<td>100</td>
<td>10</td>
<td>10</td>
<td>Yes</td>
<td>No</td>
<td>1</td>
<td>1</td>
<td class="last">
<a href="EditMemberPackage.html">
<button type="button" data-toggle="tooltip" title="Edit" class="btn btn-info btn-circle"><i class="fa fa-pencil-square-o"></i> </button>
</tr>
<tr>
<td class="first style3">2</td>
<td>Silver</td>
<td>0</td>
<td>365</td>
<td>400</td>
<td>100000</td>
<td>100000</td>
<td>Yes</td>
<td>No</td>
<td>2</td>
<td>2</td>
<td class="last">
<a href="EditMemberPackage2.html">
<button type="button" data-toggle="tooltip" title="Edit" class="btn btn-info btn-circle"><i class="fa fa-pencil-square-o"></i> </button>
</tr>
</table>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div>&nbsp;</div>
<div class="panel panel-default">
<div class="panel-heading"><h3>Package Service <span class="pull-right">
<a href="PackageServiceAdd.html" class="btn btn-warning" style="color:white">Add Package Service</a></span></h3> </div>
<div class="panel-body">
<div class="sct_right">
<div id="product_list">
<div class="table_wrapper">
<div class="table_wrapper_inner">
<table class="table-striped table-bordered table-responsive" cellpadding="2" cellspacing="0" width="100%">
<tr>
<th class="first">Sr.No.</th>
<th width="500">Service Name</th>
<th>Free</th><th>Silver</th><th>Gold</th><th>Platinum</th> <th class="last">Action</th>
</tr>
<tr>
<td class="first style3">1</td>
<td>Own Domain Webiste</td>
<td align="center">No</td>
<td align="center">No</td>
<td align="center">No</td>
<td align="center">Yes</td>
<td class="last">
<a href=""><img src="https://www.qralink.com/images/admin/images/active.gif" width="16" height="16" alt="active" /></a>
<a href="PackageServiceEdit.html"><img src="https://www.qralink.com/images/admin/images/edit-icon.gif" width="16" height="16" alt="Edit" /></a>
<a href="https://www.qralink.com/PackageServiceDelete/2" onclick="return confirm('Do You  want to delete ?');"><img src="https://www.qralink.com/images/admin/images/hr.gif" width="16" height="16" alt="Delete" /></a>
</td>
</tr>
<tr>
<td class="first style3">2</td>
<td>Leads Provided</td>
<td align="center">No</td>
<td align="center">No</td>
<td align="center">Yes</td>
<td align="center">Yes</td>
<td class="last">
<a href="https://www.qralink.com/PackageServiceStatus/Y/3"><img src="https://www.qralink.com/images/admin/images/active.gif" width="16" height="16" alt="active" /></a>
<a href="https://www.qralink.com/PackageServiceEdit/3"><img src="https://www.qralink.com/images/admin/images/edit-icon.gif" width="16" height="16" alt="Edit" /></a>
<a href="https://www.qralink.com/PackageServiceDelete/3" onclick="return confirm('Do You  want to delete ?');"><img src="https://www.qralink.com/images/admin/images/hr.gif" width="16" height="16" alt="Delete" /></a>
</td>
</tr>
<tr>
<td class="first style3">3</td>
<td>Quotation Service</td>
<td align="center">No</td>
<td align="center">No</td>
<td align="center">Yes</td>
<td align="center">Yes</td>
<td class="last">
<a href="https://www.qralink.com/PackageServiceStatus/Y/19"><img src="https://www.qralink.com/images/admin/images/active.gif" width="16" height="16" alt="active" /></a>
<a href="https://www.qralink.com/PackageServiceEdit/19"><img src="https://www.qralink.com/images/admin/images/edit-icon.gif" width="16" height="16" alt="Edit" /></a>
<a href="https://www.qralink.com/PackageServiceDelete/19" onclick="return confirm('Do You  want to delete ?');"><img src="https://www.qralink.com/images/admin/images/hr.gif" width="16" height="16" alt="Delete" /></a>
</td>
</tr>
<tr>
<td class="first style3">4</td>
<td>Catalogue</td>
<td align="center">Yes</td>
<td align="center">Yes</td>
<td align="center">Yes</td>
<td align="center">Yes</td>
<td class="last">
<a href="https://www.qralink.com/PackageServiceStatus/Y/23"><img src="https://www.qralink.com/images/admin/images/active.gif" width="16" height="16" alt="active" /></a>
<a href="https://www.qralink.com/PackageServiceEdit/23"><img src="https://www.qralink.com/images/admin/images/edit-icon.gif" width="16" height="16" alt="Edit" /></a>
<a href="https://www.qralink.com/PackageServiceDelete/23" onclick="return confirm('Do You  want to delete ?');"><img src="https://www.qralink.com/images/admin/images/hr.gif" width="16" height="16" alt="Delete" /></a>
</td>
</tr>
<tr>
<td class="first style3">5</td>
<td> Pre Owned Machinery</td>
<td align="center">Yes</td>
<td align="center">No</td>
<td align="center">No</td>
<td align="center">No</td>
<td class="last">
<a href="https://www.qralink.com/PackageServiceStatus/Y/24"><img src="https://www.qralink.com/images/admin/images/active.gif" width="16" height="16" alt="active" /></a>
<a href="https://www.qralink.com/PackageServiceEdit/24"><img src="https://www.qralink.com/images/admin/images/edit-icon.gif" width="16" height="16" alt="Edit" /></a>
<a href="https://www.qralink.com/PackageServiceDelete/24" onclick="return confirm('Do You  want to delete ?');"><img src="https://www.qralink.com/images/admin/images/hr.gif" width="16" height="16" alt="Delete" /></a>
</td>
</tr>
</table>
</div>
</div>

</body>
</html>