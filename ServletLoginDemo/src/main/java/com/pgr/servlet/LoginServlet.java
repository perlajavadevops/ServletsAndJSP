package com.pgr.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pgr.dao.LoginDao;

/**
 * Servlet implementation class ServletPostRequestDemo
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		LoginDao loginDao = new LoginDao();
		boolean valid = loginDao.validateLoginDetails(userName, password);
		if(valid) {
			out.println("<html><body style='color:red'>User Name is " + userName + " password is " + password+"</body></html>");
		}else {
			out.print("Invalid User Details");
		}
		/*ServletConfig config = getServletConfig();
		String jdbcUserName = config.getInitParameter("JdbcUsername");
		out.println("JDBC User Name :: " + jdbcUserName);
*/
		out.close();
	}

}
