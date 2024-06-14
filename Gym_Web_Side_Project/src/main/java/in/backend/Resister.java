package in.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.ConnectException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/resiter")
public class Resister extends HttpServlet{

	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	
	 String name=	req.getParameter("name");
	 String  email =req.getParameter("email");
	 String password=req.getParameter("password");
	 String mobile =req.getParameter("mobile");
	 String weigth=req.getParameter("weigth");
	 String age=	req.getParameter("age");
	 String  gender =req.getParameter("gender");
	 String fitness_goals=req.getParameter("fitness-goals");
	 String medical_conditions =req.getParameter("medical-conditions");
	 String emergency_contact=req.getParameter("emergency-contact");
	 String workout_timings=	req.getParameter("workout-timings");
	 String  join_date=req.getParameter("join-date");
	
	 
	 PrintWriter out=resp.getWriter();
	 
	 try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		 
		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gym_management","root","root");
		
		 
		 PreparedStatement ps=con.prepareStatement("insert into members values(?,?,?,?,?,?,?,?,?,?,?,?)");
		 
		 ps.setString(1, name);
		 ps.setString(2,email);
		 ps.setString(3, password);
		 ps.setString(4,mobile);
		 ps.setString(5, weigth);
		 ps.setString(6, age);
		 ps.setString(7,gender);
		 ps.setString(8, fitness_goals);
		 ps.setString(9,medical_conditions);
		 ps.setString(10, emergency_contact);
		 ps.setString(11,workout_timings);
		 ps.setString(12,join_date);
		 
	int i=	 ps.executeUpdate();
	
	if(i>0)
	{
		
		resp.setContentType("text/html");
		out.print("<h3 style ='color:green'>User Resistation successFully</h3> ");
		RequestDispatcher rd= req.getRequestDispatcher("/loginPage.jsp");
		rd.forward(req, resp);
		
	}
	else
	{
		resp.setContentType("text/html");
		out.print("<h3 style ='color:red'>User Resistation Failed.. </h3> ");
		RequestDispatcher rd= req.getRequestDispatcher("/resisterPage.jsp");
		rd.forward(req, resp);
	}
		 
		 
		 
		 
	 }catch (Exception e) {
		e.printStackTrace();
		 resp.setContentType("text/html");
			out.print("<h3 style ='color:red'>User Resistation  Failed Some issue.. </h3> ");
			RequestDispatcher rd= req.getRequestDispatcher("/resisterPage.jsp");
			rd.forward(req, resp);
	}
	 
	 
	
	}
	
}
