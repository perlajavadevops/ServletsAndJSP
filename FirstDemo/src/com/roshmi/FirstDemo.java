package com.roshmi;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * Servlet implementation class FirstDemo
 */
public class FirstDemo implements Servlet {
	private static final long serialVersionUID = 1L;

	@Override
	public void destroy() {
		System.out.println("Destroyed");
	}

	@Override
	public ServletConfig getServletConfig() {
		return getServletConfig();
	}

	@Override
	public String getServletInfo() {
		return null;
	}

	@Override
	public void init(ServletConfig arg0) throws ServletException {
		System.out.println("Servlet initialized");
	}

	@Override
	public void service(ServletRequest request, ServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		System.out.println("Service executed for each request");
		response.setContentType("text/html");//setting content type in order to see the output on the client(browsers)
		out.println("Hello First Servlet Demo");
		
		ServletConfig config = getServletConfig();
		String jdbcUserName = config.getInitParameter("JdbcUsername");
		out.println("JDBC User Name :: "+jdbcUserName);
		out.close();
		
	}
	
	

}
