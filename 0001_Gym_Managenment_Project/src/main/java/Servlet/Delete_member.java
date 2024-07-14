package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.MemberController;


@WebServlet(value = "/one_delete")
public class Delete_member extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String featch_str = req.getParameter("fetch");
		int delete_id = Integer.parseInt(featch_str);
		
		MemberController mc = new MemberController();
		 
		PrintWriter writer = resp.getWriter();
		
		
		
if (mc.Delete_member(delete_id)==true) {
			
			
	
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("All_Members.jsp");
			requestDispatcher.include(req, resp);
			writer.print("<h1>Deleted Data Succesfully</h1>");
			
		} else {
			
			
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("All_Members.jsp");
			requestDispatcher.include(req, resp);
			writer.print("<h1> Data Not Deleted </h1>");
		}
	}
}
