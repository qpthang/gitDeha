<!DOCTYPE html>
<html>
<head>
	<title>Admin page</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="public/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="../public/css/admin.css">
  <script type="text/javascript" src="public/ckeditor/ckeditor.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Babyshop</a>
    </div>
    <div id="navbar" class="collapse navbar-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.php?controller=category">Danh sách danh mục</a></li>
        <li class="active"><a href="index.php?controller=product">Danh sách sản phẩm</a></li>
        <li class="active"><a href="index.php?controller=news">Tin tức</a></li>
        <li class="active"><a href="index.php?controller=user">Admin</a></li>
        <li class="active"><a href="index.php?controller=producer">Nhà cung cấp</a></li>
        <li class="active">
              <a href="#" class="" data-toggle="dropdown"> Order</a>
              <ul class="sub-menu">
                <li><a href="index.php?controller=order&act=choduyet">Chờ Duyệt</a></li>
                <li><a href="index.php?controller=order&act=dahuy">Đã Hủy</a></li>
                <li><a href="index.php?controller=order&act=dagiao">Đã Giao</a></li>
              </ul>
            </li>
        <li class="active"><a href="index.php?controller=logout">Đăng xuất</a></li>
      </ul>
    </div><!--/.nav-collapse -->
  </div>
</nav>
<div class="container" style="margin-top:80px;">
	<?php 
		if(file_exists($controller) == true)
			include $controller;
	 ?>
</div>
</body>
</html>