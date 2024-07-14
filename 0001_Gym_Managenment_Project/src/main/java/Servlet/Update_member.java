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

@WebServlet(value = "/update_data")
public class Update_member extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
		PrintWriter writer = resp.getWriter();
		
		String fetch = req.getParameter("fetch");
		int member_id = Integer.parseInt(fetch);
		String update = req.getParameter("update");
		
		String edit = req.getParameter("edit");
		
		
		MemberController mc = new MemberController();
		
		if (update.equals("Amount")) {
			
			double change = Integer.parseInt(edit);
			
			mc.Update_Paid(member_id, change);
			
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("All_Members.jsp");
			requestDispatcher.include(req, resp);
			writer.print("<h1>Amount update Succesfully</h1>");
			
		} else if(update.equals("Membership")){

			int change = Integer.parseInt(edit);
			
			mc.update_membership(member_id, change);
			
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("All_Members.jsp");
			requestDispatcher.include(req, resp);
			writer.print("<h1>membership update Succesfully</h1>");
		}else {
			
		}
	}
}
