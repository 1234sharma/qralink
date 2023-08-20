<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
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
<body>
<div>
<div class="panel panel-default">
<div class="panel-heading clearfix">
<h2 class="page-header">Show trade lead Category</h2>
</div>
<div class="panel-body">
<div class>
<div class="sct_right">
<div id="product_list">
<div id="demo" class="collapse">
<div class="panel panel-default">
<div class="panel-heading">Add Trade Lead</div>
<div class="panel-body">
<div class="table_wrapper">
<div class="table_wrapper_inner">
<form name="add_trade_lead" method="post" action>
<div id="search_val" style="display:inline; margin-left:4px;"> </div>
<div class>
<div class="form-group">
<input type="text" placeholder="Category Name " class="form-control" name="cat_name" value required />
</div>
</div>
<input type="hidden" name="cat_id" value="0" />
<input type="hidden" name="edit_id" value />
<div class="row">
<div class="col-md-4">
<div class="form-group">
<input type="text" placeholder="Title" class="form-control" name="title" value required /></div>
</div>
<div class="col-md-4">
<div class="form-group">
<input type="text" placeholder class="form-control" name="keyword" value required />
</div>
</div>
<div class="col-md-4">
<div class="form-group">
<input type="text" placeholder="Description" class="form-control" name="description" value required />
</div>
</div>
</div>
<div class="row">
<div class="col-md-12">
<input type="submit" class="btn btn-primary" name="submit" value="Add Category" onclick="return Valid_add_trade_lead(document.add_trade_lead);" />
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
<table class="listing table-responsive table-bordered table-striped" cellpadding="0" width="100%" cellspacing="0">
<tr>
<th class="first" width="8%"><span class="manten-th">S.N.</span></th>
<th><span class="manten-th">Category</span></th>
<th class="last" width="16%"><span class="manten-th">Action</span></th>
</tr>
<td colspan="8" style="color:#F00; font-size:24px; text-align:center">Record Not Found</td>
</table>
</div>
</div>
<!--[if !IE]>end table_wrapper<![endif]-->
</div>
<!--[if !IE]>start pagination<![endif]-->
<!--[if !IE]>end pagination<![endif]-->
</div>
</div>
</div>
</div>
</div>
<div class="footer_section">
<div class="row">
<div class="col-md-6">
</div>
</div>
</div>


</body>
</html>