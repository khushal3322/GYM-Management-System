package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import component.Member;
import controller.MemberController;

@WebServlet(value = "/one_featch")
public class one_Featch extends HttpServlet{
	
	static int nok;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String fetch_str = req.getParameter("fetch");
		int featch=Integer.parseInt(fetch_str);
		req.setAttribute("id", featch);
		
		
		
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("One_member.jsp");
		requestDispatcher.forward(req, resp);
		
		
		
	}
}
