<%@page import="com.pgr.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<jsp:useBean id="emp" class="com.pgr.model.Employee" scope="">
	</jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<p>Hello First JSP Program Demo</p>

	<%!private String displayDemoMethod() {
		return "JSP Declaration Tag Understanding";
	}%>
	<%@ include file="exep.jsp"%>



<jsp:setProperty property="name" name="emp"
			value="Dhatrika Sai Testing" />
		<jsp:setProperty property="empId" name="emp" value="12111" />
	<%
		int a = 90;
		int b = 100;
		int c = a + b;

		String name = request.getParameter("userName");
		String password = request.getParameter("password");
		out.println(name);

		/* Employee emp = new Employee(101, "Dhatrika Sai"); */

		session.setAttribute("employeeDetails", emp);
		session.setAttribute("name", name);
		//Cookie ck = new Cookie("uname", name);// creating cookie object		response.addCookie(ck);//

		out.print("C value is " + c);

		String jdbcUserName = application.getInitParameter("name");
		out.println("JDBC User Name :: " + jdbcUserName);

		pageContext.setAttribute("employeePageContext", emp, PageContext.APPLICATION_SCOPE);
	%>

	<%=name%>
	<%=c%>
	<%=displayDemoMethod()%>

	<a href="second.jsp">Second</a>


</body>
</html>