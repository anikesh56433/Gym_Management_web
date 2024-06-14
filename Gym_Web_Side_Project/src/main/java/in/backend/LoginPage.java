package in.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")  
public class LoginPage extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String email=req.getParameter("email");
		String password =req.getParameter("password");
		
		
		
		resp.setContentType("text/html");
		PrintWriter out= resp.getWriter();
		
		try {
		  Class.forName("com.mysql.cj.jdbc.Driver");
		  System.out.println("Driver Loaded");
	
		  
		  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gym_management","root","root");
		  System.out.println("Connected to The Database");
		
		  
		  PreparedStatement ps= con.prepareStatement("select * from members where email=? and password=?");
		  
		  ps.setString(1, email);
		  ps.setString(2, password);
		  
		  
		  ResultSet rs= ps.executeQuery();
		  
		  if(rs.next())
		  {
			  HttpSession session = req.getSession();
			  session.setAttribute("session_name",rs.getString("name"));
			  session.setAttribute("session_email",rs.getString("email"));
			  session.setAttribute("session_password",rs.getString("password"));
			  session.setAttribute("session_mobile_number",rs.getString("mobile_number"));
			  session.setAttribute("session_weight_kg ",rs.getString("weight_kg"));
			  session.setAttribute("session_age",rs.getString("age"));
			  session.setAttribute("session_gender",rs.getString("gender"));
			  session.setAttribute("session_fitness_goals",rs.getString("fitness_goals"));
			  session.setAttribute("session_medical_conditions",rs.getString("medical_conditions"));
			  session.setAttribute("session_emergency_contact_details",rs.getString("emergency_contact_details"));
			  session.setAttribute("session_preferred_workout_timings",rs.getString("preferred_workout_timings"));
			  session.setAttribute("session_date_of_joining",rs.getString("date_of_joining"));
			  
			  
			  RequestDispatcher rd=req.getRequestDispatcher("/profilePage.jsp");
			  rd.include(req, resp);
			 
		  }
		  else
		  {
			  
			  out.print("<h3 style = 'color:red'>Email Id And Password Wrong </h3>");
			   
			  RequestDispatcher rd=req.getRequestDispatcher("/loginPage.jsp");
			  rd.include(req, resp);
			  
		  }

		}
		catch (Exception e) {
			e.printStackTrace();
			
			 out.print("<h3 style = 'color:red'>"+ e.getMessage()+ "</h3>");
			   
			  RequestDispatcher rd=req.getRequestDispatcher("/loginPage.jsp");
			  rd.include(req, resp);
			
		}
		
		
	}

}
