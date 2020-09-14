<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Account</title>
</head>
<body>
<%@page import="mypack.AccountDao,mypack.*,java.util.*" %>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
<h1>Account List</h1>
<%
List<Account> lst=AccountDao.getAllRecords();
request.setAttribute("lst", lst);
%>
<table border="1" width="90%">  
<tr><th>CustomerId</th><th>State</th><th>Name</th><th>EmailAddress</th>  
<th>Mobile</th><th>Password</th><th>RePassword</th><th>Question</th><th>Answer</th><th>Edit</th><th>Delete</th></tr>  
<c:forEach items="${lst}" var="ac">  
<tr><td>${ac.getId()}</td><td>${u.getName()}</td><td>${u.getPassword()}</td>  
<td>${u.getEmail()}</td><td>${u.getSex()}</td><td>${u.getCountry()}</td>  
<td><a href="EditAccount.jsp?id=${ac.getCustomerID}">Edit</a></td>  
<td><a href="DeleteAccount.jsp?id=${u.getId()}">Delete</a></td></tr>  
</c:forEach>  
</table>  
<br/><a href="AddAccountForm.jsp">Add New Account</a>  

</body>
</html>