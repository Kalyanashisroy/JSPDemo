<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Hello JSP</h1>
<%-- <% out.print("Today is:"+java.util.Calendar.getInstance().getTime()); %> --%>
<%-- <%!int data=50; %>
<%="value of the variable is:"+data %>
<%!int cube(int n){
	return n*n*n;
} %><br>
<%= "Cube of 3 is:"+cube(3) %>   --%>
<%-- <%@ page errorPage="error.jsp" %>  
  
 <%= 100/0 %>  --%>
 <%-- <%@ taglib uri="http://www.javatpoint.com/tags" prefix="mytag" %>  
  
 <mytag:currentDate/> --%>
	<!-- <form action="process.jsp">
	No1:<input type="text" name="n1" /><br /><br /> 
	No1:<input type="text" name="n2" /><br /><br />
	<input type="submit" value="divide" />
	</form> -->
	<%-- <h2>this is index page</h2>  
  
	<jsp:forward page="printdate.jsp" />
	<jsp:param name="name" value="javatpoint.com" />  
	</jsp:forward>  --%> 
	<h2>this is index page</h2>  
  
	<jsp:include page="printdate.jsp" />  
  
	<h2>end section of index page</h2>
	 
	
</body>
</html>