<%@page import="org.hibernate.cache.spi.support.AbstractReadWriteAccess.Item"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="base.jsp" /> 
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
icons{
color:"orange";
}

</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" 
crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>


</style>
</head>
<body>
	
	<div class="container-fluid text-center">
	<div class="col-md-6 offset-md-2  text-center">
		<table 	class="table table-bordered border-success" >
		<thead>
		<tr>
			<th scope="col">s.no</th>
			<th scope="col">products</th>
			<th scope="col">description</th>
			<th scope="col">price</th>
			<th scope="col">Action</th>
		</tr>
		 
		   <c:forEach items="${products}" var="item">
    <tr>
      <th scope="row"><c:out value="${item.id}" /> </th>
      
       <td><c:out value="${item.name}" /></td>
        <td><c:out value="${item.description}" /></td>
         <td><c:out value="${item.price}" /></td>
         <td><div class="icons" ><a class="fa-solid fa-pen-nib" style="width:20px ;heght:20px" href="update/${item.id}" ></a>
          <a href="delete/${item.id}" class="fa-solid fa-trash" style="width:20px ;heght:20px ;color:red" ></a></div></td>
    </tr>
  </c:forEach>
		</table>
		<a class="btn btn-success" href="addProduct" role="button">Add Product</a>
	</div>
	
	</div>
	 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
	 integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" 
	 crossorigin="anonymous"></script>
</body>
</html>