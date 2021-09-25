<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	
	
	
	try{
		Integer i = Integer.parseInt(request.getParameter("val1"));
		Integer j = Integer.parseInt(request.getParameter("val2"));
		out.println(i/j);
	}catch(ArithmeticException e){
		throw new ArithmeticException("Number divided by zero is not possible atall");
	}catch(NumberFormatException e){
		throw new NumberFormatException("Wrong number entered... please enter only numbers");
	}
	
	
	
	%>
	
	<form:form></form:form>
</body>
</html>