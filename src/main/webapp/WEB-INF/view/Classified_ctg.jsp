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
<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" media="all">
<link href="https://www.qralink.com/admin/js/morris/morris-0.4.3.min.css" rel="stylesheet" />


<style media="all" type="text/css">@import "https://www.qralink.com/admin/css/css/admin.css";</style>


</head>
<body>
<div ><br/>
<div class="panel panel-default">
<div class=" panel-heading clearfix">
<h2 class="page-header">Classified Category</h2>
<button type="button" class=" pull-right btn btn-info" data-toggle="collapse" data-target="#demo">
Add Category </button>
<a href="https://www.qralink.com/ClassifiedType" style="margin-right:10px;" class="pull-right btn btn-info">Classified Type</a>
</div>
<div class="panel-body">
<div class="sct_right">
<div id="product_list">
<div id="demo" class="collapse">
<div class="panel panel-default">
<div class="panel-heading">
Add Category </div>
<div class="panel-body">
<div class="table_wrapper">
<div class="table_wrapper_inner">
<form class="stdform stdform2" method="post" name="frm_manuf" enctype="multipart/form-data" action>
<input type="hidden" value name="update_id" />
<input type="hidden" value name="edit_cat" />
<input type="hidden" name="old_photo" value />
<div class="row">
<div class="col-md-4">
<input placeholder="Category Name" class="form-control" type="text" name="category_name" id="category_name" value /> <span class="text text-danger"></span>
</div>
<div class="col-md-4">
<input type="text" name="category_icon" placeholder="Category Icon" id="category_icon" class="longinput form-control" value /><br/><span class="text text-danger"></span>
<a target="_blank" href="https://fortawesome.github.io/Font-Awesome/icons/">(To Add Category Icon Click)</a>
</div>
<div class="col-md-4">
<input type="file" name="cat_img" size="30" class="form-control" value />
<span class="text text-danger"></span>
</div>
</div>
<div class="row">
<div class="col-md-4">
<input type="text" name="title" placeholder="Title" id="title" class="longinput form-control" value />
<span class="text text-danger"></span>
</div>
<div class="col-md-4">
<textarea class="form-control" placeholder="Keyword" name="keyword" id="keyword" cols="25"></textarea>
<span class="text text-danger"></span>
</div>
<div class="col-md-4">
<textarea class="form-control" placeholder="Description" name="description" id="description" cols="25"></textarea>
<span class="text text-danger"></span>
</div>
</div>

<table>
<tr>
<td class="table-width">
<br/>
<button type="submit" class="btn btn-primary" name="submit" value="addmanuf" onclick="return validMainCatgory(document.frm_manuf);">Add Category</button>
</td>
</tr>
</table>
</form>
</div>
</div>
</div>
</div>
</div>
<div class="table_wrapper">
<div class="table_wrapper_inner">
<table class="listing table-responsive table-striped table-bordered" cellpadding="0" width="95%" cellspacing="0" align="center">
<tr>
<th><span class="manten-th">Sr.No.</span></th>
<th><span class="manten-th">Category</span></th>
<th><span class="manten-th">Category Image</span></th>
<th><span class="manten-th">Action</span></th>
</tr>
<tr>
<td class="first style3">1</td>
<td>
<a href="https://www.qralink.com/SubClassifiedCategories/175">Used Packaging Machine</a>
</td>
<td>
N/A </td>
<td class="last">
<a href="https://www.qralink.com/ClassifiedCategories?update_id=175" class="btn btn3 btn_pencil" data-toggle="tooltip" title="Edit"><button data-toggle="collapse" data-target="#demo" type="button" class="btn btn-info btn-circle"><i class="fa fa-pencil-square-o"></i></button></a>
<a href="https://www.qralink.com/ClassifiedCategoriesDelete/175" class="btn btn3 btn_trash" data-toggle="tooltip" title="Delete" onclick="return confirm('Do You  want to delete ?');"><button type="button" class="btn btn-danger btn-circle"><i class="fa fa-times"></i> </button></a>
</td>
</tr>
<tr>
<td class="first style3">2</td>
<td>
<a href="https://www.qralink.com/SubClassifiedCategories/174">Used Flexographic Printing Machine</a>
</td>
<td>
N/A </td>
<td class="last">
<a href="https://www.qralink.com/ClassifiedCategories?update_id=174" class="btn btn3 btn_pencil" data-toggle="tooltip" title="Edit"><button data-toggle="collapse" data-target="#demo" type="button" class="btn btn-info btn-circle"><i class="fa fa-pencil-square-o"></i></button></a>
<a href="https://www.qralink.com/ClassifiedCategoriesDelete/174" class="btn btn3 btn_trash" data-toggle="tooltip" title="Delete" onclick="return confirm('Do You  want to delete ?');"><button type="button" class="btn btn-danger btn-circle"><i class="fa fa-times"></i> </button></a>
</td>
</tr>
<tr>
<td class="first style3">3</td>
<td>
<a href="https://www.qralink.com/SubClassifiedCategories/172">Used Paper Cutting Machine</a>
</td>
<td>
<img src="https://www.qralink.com/images/classified_main_image/1643791774.png" width="50" height="50" />
</td>
<td class="last">
<a href="https://www.qralink.com/ClassifiedCategories?update_id=172" class="btn btn3 btn_pencil" data-toggle="tooltip" title="Edit"><button data-toggle="collapse" data-target="#demo" type="button" class="btn btn-info btn-circle"><i class="fa fa-pencil-square-o"></i></button></a>
<a href="https://www.qralink.com/ClassifiedCategoriesDelete/172" class="btn btn3 btn_trash" data-toggle="tooltip" title="Delete" onclick="return confirm('Do You  want to delete ?');"><button type="button" class="btn btn-danger btn-circle"><i class="fa fa-times"></i> </button></a>
</td>
</tr>
<tr>
<td class="first style3">4</td>
<td>
<a href="https://www.qralink.com/SubClassifiedCategories/171">Uesd Screen Printing Machine</a>
</td>
<td>
<img src="https://www.qralink.com/images/classified_main_image/1643791465.png" width="50" height="50" />
</td>
<td class="last">
<a href="https://www.qralink.com/ClassifiedCategories?update_id=171" class="btn btn3 btn_pencil" data-toggle="tooltip" title="Edit"><button data-toggle="collapse" data-target="#demo" type="button" class="btn btn-info btn-circle"><i class="fa fa-pencil-square-o"></i></button></a>
<a href="https://www.qralink.com/ClassifiedCategoriesDelete/171" class="btn btn3 btn_trash" data-toggle="tooltip" title="Delete" onclick="return confirm('Do You  want to delete ?');"><button type="button" class="btn btn-danger btn-circle"><i class="fa fa-times"></i> </button></a>
</td>
</tr>
<tr>
<td class="first style3">5</td>
<td>
<a href="https://www.qralink.com/SubClassifiedCategories/170">Used Flexo Printing Machine</a>
</td>
<td>
<img src="https://www.qralink.com/images/classified_main_image/1643791449.png" width="50" height="50" />
</td>
<td class="last">
<a href="https://www.qralink.com/ClassifiedCategories?update_id=170" class="btn btn3 btn_pencil" data-toggle="tooltip" title="Edit"><button data-toggle="collapse" data-target="#demo" type="button" class="btn btn-info btn-circle"><i class="fa fa-pencil-square-o"></i></button></a>
<a href="https://www.qralink.com/ClassifiedCategoriesDelete/170" class="btn btn3 btn_trash" data-toggle="tooltip" title="Delete" onclick="return confirm('Do You  want to delete ?');"><button type="button" class="btn btn-danger btn-circle"><i class="fa fa-times"></i> </button></a>
</td>
</tr>
<tr>
<td class="first style3">6</td>
<td>
<a href="https://www.qralink.com/SubClassifiedCategories/169">Used Digital Offset Machine</a>
</td>
<td>
<img src="https://www.qralink.com/images/classified_main_image/1643791433.png" width="50" height="50" />
</td>
<td class="last">
<a href="https://www.qralink.com/ClassifiedCategories?update_id=169" class="btn btn3 btn_pencil" data-toggle="tooltip" title="Edit"><button data-toggle="collapse" data-target="#demo" type="button" class="btn btn-info btn-circle"><i class="fa fa-pencil-square-o"></i></button></a>
<a href="https://www.qralink.com/ClassifiedCategoriesDelete/169" class="btn btn3 btn_trash" data-toggle="tooltip" title="Delete" onclick="return confirm('Do You  want to delete ?');"><button type="button" class="btn btn-danger btn-circle"><i class="fa fa-times"></i> </button></a>
</td>
</tr>
<tr>
<td class="first style3">7</td>
<td>
<a href="https://www.qralink.com/SubClassifiedCategories/165">Used Offset Printing Machine</a>
</td>
<td>
<img src="https://www.qralink.com/images/classified_main_image/1643791412.png" width="50" height="50" />
</td>
<td class="last">
<a href="https://www.qralink.com/ClassifiedCategories?update_id=165" class="btn btn3 btn_pencil" data-toggle="tooltip" title="Edit"><button data-toggle="collapse" data-target="#demo" type="button" class="btn btn-info btn-circle"><i class="fa fa-pencil-square-o"></i></button></a>
<a href="https://www.qralink.com/ClassifiedCategoriesDelete/165" class="btn btn3 btn_trash" data-toggle="tooltip" title="Delete" onclick="return confirm('Do You  want to delete ?');"><button type="button" class="btn btn-danger btn-circle"><i class="fa fa-times"></i> </button></a>
</td>
</tr>
<tr>
<td colspan="8"><center></center></td>
</tr>
</table>
</div>
</div>
</div>
</div>
</div>
</div></div>



</body>
</html>