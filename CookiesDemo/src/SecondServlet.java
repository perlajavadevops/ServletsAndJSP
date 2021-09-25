import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class SecondServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) {
		try {

			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			
			 Cookie ck[]=request.getCookies(); 
			 out.print("Hello "+ck[0].getValue());
			 

			/*String n = request.getParameter("uname");
			out.print("Hello " + n);
*/
			out.close();

		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
