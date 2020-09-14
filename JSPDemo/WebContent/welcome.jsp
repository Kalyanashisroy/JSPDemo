<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%-- <%
	String name=request.getParameter("uname");
	out.print("welcome "+name);
	%> --%>
	<%-- <%response.sendRedirect("http://www.google.com"); %> --%>
	<%-- <%out.print("Welcome"+request.getParameter("uname"));
	
	String driver=config.getInitParameter("dname");
	out.print("driver name is="+driver);
	%> --%>
	<%-- <%
	String name=request.getParameter("uname");
	out.print("Welcome "+name);
	
	session.setAttribute("user", name);
	<a href="second.jsp">second jsp page</a>
	
	%> --%>
	<%
	String name=request.getParameter("uname");
	out.print("Welcome "+name);
	
	pageContext.setAttribute("user",name,PageContext.SESSION_SCOPE);  
	  
	/* <a href="second.jsp">second jsp page</a> */
	
	%>
	
	
</body>
</html>