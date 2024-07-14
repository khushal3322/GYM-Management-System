package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import component.Member;
import config.Myconfig;
import controller.MemberController;

@WebServlet(value = "/addmember")
public class Add_member extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		
		PrintWriter writer = resp.getWriter();
		
		String name = req.getParameter("name");
		String phone_no_1 = req.getParameter("phone");
		long phone_no = Long.parseLong(phone_no_1);

		String joining_date_1 = req.getParameter("joining_date");
		LocalDate joining_date = LocalDate.parse(joining_date_1);
		String period_str = req.getParameter("Period");
		int period = Integer.parseInt(period_str);
		
		String fees_paid_1 = req.getParameter("fees");
		double fees_paid = Double.parseDouble(fees_paid_1);

		AnnotationConfigApplicationContext acac = new AnnotationConfigApplicationContext(Myconfig.class);

		Member member = acac.getBean(Member.class);

		member.setName(name);
		member.setPhone(phone_no);
		member.setJoinOn(joining_date);
		member.setPeriod(period);
		
		double total=500*period;
		member.setTotal_Amount(total);
		member.setPaid(fees_paid);
		member.setPendiningAmount(total-fees_paid);
		LocalDate expied_date = joining_date.plusMonths(period);

		member.setExpired(expied_date);
		
		MemberController memberController = new MemberController();
		
		if (memberController.addmember(member)==true) {
			
			
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("Add__member.jsp");
			requestDispatcher.include(req, resp);
		
			writer.print("<h1>Add Data Succesfully</h1>");
		} else {
			
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("Add__member.jsp");
			requestDispatcher.include(req, resp);
			writer.print("<h1> Data Not Added Succesfully</h1>");
		}

	}

}
