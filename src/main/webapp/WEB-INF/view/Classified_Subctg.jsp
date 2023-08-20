<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html >
<head>
<title>Admin</title>

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
<div id="wrapper">


<div ><br/>
<div class="panel panel-default">
<div class=" panel-heading clearfix">
<h2 class="page-header">Classified Sub Category(Used Packaging Machine)</h2>
<button type="button" class=" pull-right btn btn-info" data-toggle="collapse" data-target="#demo">
Add Sub Category </button>
<a href="https://www.qralink.com/ClassifiedType" style="margin-right:10px;" class="pull-right btn btn-info">Classified Type</a>
</div>
<div class="panel-body">
<div class="sct_right">
<div id="product_list">
<div id="demo" class="collapse">
<div class="panel panel-default">
<div class="panel-heading">Add Sub Category </div>
<div class="panel-body">
<div class="table_wrapper">
<div class="table_wrapper_inner">
<form class="stdform stdform2" method="post" name="frm_manuf" enctype="multipart/form-data" action>
<input type="hidden" value name="update_id" />
<input type="hidden" value name="edit_cat" />
<input type="hidden" name="old_photo" value />
<input type="hidden" value="175" name="cat_id" />
<div class="row">
<div class="col-md-4">
<input placeholder="Category Name" class="form-control" type="text" name="category_name" id="category_name" value />
<span class="text text-danger"></span>
</div>
<div class="col-md-4">
<input type="file" name="cat_img" size="30" class="form-control" value />
<span class="text text-danger"></span>
</div>
<div class="col-md-4">
<button type="submit" class="btn btn-primary" name="submit" value="addmanuf" onClick="return validMainCatgory(document.frm_manuf);">Add </button>
</div>
</div>
</form>
</div>
</div>
</div>
</div>
</div>
<br/>
<div class="table_wrapper">
<div class="table_wrapper_inner">
<table class="listing table-responsive table-striped table-bordered" cellpadding="0" width="95%" cellspacing="0" align="center">
<tr>
<th>Sr.No.</th>
<th>SUB-CATEGORY</th>
<th>Category Image</th>
<th>Action</th>
</tr>
<td colspan="8">Record Not Found</td>
</table>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

</body>
</html>