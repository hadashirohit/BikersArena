<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> ADD IMAGE DETAIL</h1>
	
	<div >
	<form action="AddImagess" method="post" enctype="multipart/form-data">
	Product name : <input type="text" name="name">
	Product price : <input type="text" name="price">
	Product description : <input type="text" name="descr">
	Select Image: <input type="file" name="image">
	<input type="submit" value="Add Product">
	</form>
	</div>
</body>
</html>