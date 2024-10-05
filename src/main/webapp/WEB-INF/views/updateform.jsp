<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="base.jsp" />
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background:grey">
	<div class="card" style="background:orange;width:50rem; margin-left:20rem">
	<div class="card-header text-center"><h2>Change the product details</h2></div>
	<div class="card-body">
	<div class="">
	<form class="border border-2" action="${pageContext.request.contextPath}/submitted" method="post" ><h4>
	<div class="container" style="margin:.5rem">
	
	<label for="id">Product Id:${product.id }</label>
	<input type="hidden" value="${product.id }" name="id" id="id"><br>
	<label for="Product" >name of the Product:</label><br>
	<input type="text"  id="Product" name="name" placeholder="enter name " value="${product.name }"><br>
	<label for="Product-Description" >Description:</label><br>
	<textarea   id="Product-Description" name="description" rows="6" palceholder="enter here">${product.description }</textarea><br>
	<label for="Price" >price of the Product:</label><br>
	<input type="number"  id="Price" name="price" placeholder="enter price" value="${product.price }"><br>
	</div>
	<div class="button text-center" style="margin:2rem">	
	<button type="submit" class="btn btn-success" >submit</button>
	<button type="reset" class="btn btn-danger" >reset</button>
	</div>
	
	</h4>
	
	</form></div>

	</div>
	
	</div>
	
</body>
</html>