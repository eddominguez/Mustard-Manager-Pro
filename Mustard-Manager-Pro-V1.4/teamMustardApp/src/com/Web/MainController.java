package com.Web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLFeatureNotSupportedException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;


@WebServlet("/MainController")
public class MainController extends HttpServlet {

	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException
	{
		System.out.println("MainController: I've been requested."); //TODO: Remove
		HttpSession session = req.getSession();
		String whatPageRequestedMe = (String) session.getAttribute("whereAmIFrom");
		//Main Control Structure
		PageInfoAssembler assembler = new PageInfoAssembler();
		if(whatPageRequestedMe.equals("login"))
		{
			Integer userid = Integer.valueOf(req.getParameter("userid"));
			UserViewGenerator generator = new UserViewGenerator();
			List<Integer> SubordinationList = generator.assembleUserView(userid);
			session.setAttribute("SubordinationList", SubordinationList);
			session.setAttribute("userID", userid);
			String popinfo = assembler.assable_all_employees_page(userid);
			session.setAttribute("popinfo", popinfo);
			RequestDispatcher rd = req.getRequestDispatcher("all_employees.jsp");
			rd.forward(req, res);
		}
		else if(whatPageRequestedMe.equals("all_employees"))
		{
			Integer userid = (Integer) session.getAttribute("userID");
			Integer targetid = Integer.valueOf(req.getParameter("userid"));
			String[] popinfo = assembler.assable_r_profile(userid,targetid);
			session.setAttribute("popinfo", popinfo);
			RequestDispatcher rd = req.getRequestDispatcher("r_profile.jsp");
			rd.forward(req, res);
		}
		else if(whatPageRequestedMe.equals("r_profile"))
		{
			try
			{
				//create a new context
				InitialContext contxt = new InitialContext();
				// refer the new context to the datasource you want to use
				DataSource ds = (DataSource) contxt.lookup("java:/comp/env/jdbc/postgres");
				System.out.println("MainController: I have the context object and datasource!");
				//Initiate connection with DB
				Connection connection = ds.getConnection();
				System.out.println("MainController: I've connected to the DB! Wow!");
				//Initiate Statement object to run queries on
				Statement queryRunner = connection.createStatement();
				String targetidstr = (String) session.getAttribute("targetid");
				queryRunner.execute("UPDATE public.\"Employee\" SET \"PROJECTED_RATING\"="+req.getParameter("ratingID")+" WHERE \"EMPLOYEE_ID\" = "+targetidstr+";");
			}
			catch(Exception err)
			{
				System.out.println("MainController: Something went wrong.");
			}
			Integer userid = (Integer) session.getAttribute("userID");
			UserViewGenerator generator = new UserViewGenerator();
			List<Integer> SubordinationList = generator.assembleUserView(userid);
			session.setAttribute("SubordinationList", SubordinationList);
			session.setAttribute("userID", userid);
			String popinfo = assembler.assable_all_employees_page(userid);
			session.setAttribute("popinfo", popinfo);
			RequestDispatcher rd = req.getRequestDispatcher("all_employees.jsp");
			rd.forward(req, res);
		}
	}
	/* #This is just an example of the DB to webapp connection
	private String getEmployeeInfo(String inp)
	{
		String theValIWant = null;
		try
		{
			//create a new context
			InitialContext contxt = new InitialContext();
			// refer the new context to the datasource you want to use
			DataSource ds = (DataSource) contxt.lookup("java:/comp/env/jdbc/postgres");
			System.out.println("I have the context object and datasource!");
			//Initiate connection with DB
			Connection connection = ds.getConnection();
			System.out.println("I've connected to the DB! Wow!");
			//Initiate Statement object to run queries on
			Statement queryRunner = connection.createStatement(); 
			// Response is basically the return table from the query.
			ResultSet response = queryRunner.executeQuery("SELECT \"EMPLOYEE_FIRST_NAME\" FROM public.\"Employee\" WHERE \"EMPLOYEE_ID\"="+inp+";");
		    while (response.next()) {
		        theValIWant = response.getString("EMPLOYEE_FIRST_NAME");
		    }
			queryRunner.close();
		}
		catch(NamingException err)
		{
			System.out.print("NamingException."); //Error for if the initialization of contxt fails.
		}
		catch(SQLFeatureNotSupportedException  err)
		{
			System.out.println("Unsupported action.");
		}
		catch(SQLException err)
		{
			System.out.println("Access error.");
		}
		catch(Exception err)
		{
			System.out.print("Something went wrong connecting to the DB."); //Error for if the connection to the DB fails.
		}
		if (theValIWant == null)
		{
			return "I got a null value as a response";
		}
		return theValIWant;
	}
	*/
}
