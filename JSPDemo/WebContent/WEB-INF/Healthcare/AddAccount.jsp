<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="mypack.AccountDao" %>
<jsp:useBean id="ac" class="mypack.Account"></jsp:useBean>
<jsp:setProperty property="*" name="ac"/>

Record:<br>
<jsp:getProperty property="Customer_Id" name="ac"/><br>
<jsp:getProperty property="State" name="ac"/><br>
<jsp:getProperty property="Name" name="ac"/><br>
<jsp:getProperty property="EmailAddress" name="ac"/><br>
<jsp:getProperty property="Mobile" name="ac"/><br>
<jsp:getProperty property="Password" name="ac"/><br>
<jsp:getProperty property="RePassword" name="ac"/><br>
<jsp:getProperty property="Question" name="ac"/><br>
<jsp:getProperty property="Answer" name="ac"/><br>

<%int i=AccountDao.save(ac);
if(i>0){
	response.sendRedirect("AddAccount-success.jsp");
}else{
	response.sendRedirect("AddAccount-error.jsp");
}

%>
</body>
</html>