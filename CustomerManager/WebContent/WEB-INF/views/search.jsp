<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search results</title>
</head>
<body>
  <div align="center">
  <h2>Search results</h2>
  <h1><a href="new">New Customer</a></h1>
  <table border="1" cellpadding="10">
  <tr>
     <th>ID</th>
     <th>Name</th>
     <th>E-mail</th>
     <th>Address</th>
     </tr>
     <c:forEach items="${result}" var="customer">
      <tr>
        <td>${customer.id}</td>
        <td>${customer.name}</td>
        <td>${customer.email}</td>
        <td>${customer.address}</td>
        
      </tr>     
     </c:forEach>
  </table>
  </div>
</body>
</html>