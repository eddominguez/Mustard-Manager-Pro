package com.Web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLFeatureNotSupportedException;
import java.sql.Statement;

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
		String inputID = req.getParameter("empID");
		String employeeName = getEmployeeInfo(inputID);
		HttpSession session = req.getSession();	
		RequestDispatcher rd = req.getRequestDispatcher("displayEmployeeName.jsp");
		session.setAttribute("empName", employeeName);
		rd.forward(req, res);
	}
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
}
