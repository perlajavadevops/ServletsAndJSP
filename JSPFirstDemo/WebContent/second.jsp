<%@page import="com.pgr.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
 //Cookie ck[]=request.getCookies(); out.print("Hello "+ck[1].getValue());

Employee emp = (Employee)session.getAttribute("employeeDetails");
String name = (String)session.getAttribute("name");
String jdbcUserName = application.getInitParameter("name");
out.println("JDBC User Name :: "+jdbcUserName);

Employee emp1 = (Employee) pageContext.getAttribute("employeePageContext", PageContext.APPLICATION_SCOPE);

%>

<%= emp1.getEmpId()+" "+emp1.getName()%>
<%= name%>
</body>
</html>