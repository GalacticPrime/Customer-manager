<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Manager</title>
</head>
<body>
  <div align="center">
  <h2>Customer Manager</h2>
  <form method="get" action="search">
   <input type="text" name="keyword"/>
   <input type="submit" value="search"/>
  </form>
  <h1><a href="new">New Customer</a></h1>
  <table border="1" cellpadding="10">
  <tr>
     <th>ID</th>
     <th>Name</th>
     <th>E-mail</th>
     <th>Address</th>
     <th>Action</th>
     </tr>
     <c:forEach items="${listCustomer}" var="customer">
      <tr>
        <td>${customer.id}</td>
        <td>${customer.name}</td>
        <td>${customer.email}</td>
        <td>${customer.address}</td>
        <td>
        <a href="edit?id=${customer.id}">Edit</a>
        &nbsp;&nbsp;&nbsp;
         <a href="delete?id=${customer.id}">Delete</a>
        </td>
      </tr>     
     </c:forEach>
  </table>
  </div>
</body>
</html>