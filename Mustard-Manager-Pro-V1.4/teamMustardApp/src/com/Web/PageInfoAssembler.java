package com.Web;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLFeatureNotSupportedException;
import java.sql.Statement;
import java.util.*;

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
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class PageInfoAssembler 
{
	public String assable_all_employees_page(Integer userid)
	{
		String output = "";
		try
		{
			//create a new context
			InitialContext contxt = new InitialContext();
			// refer the new context to the datasource you want to use
			DataSource ds = (DataSource) contxt.lookup("java:/comp/env/jdbc/postgres");
			System.out.println("assable_all_employees_page: I have the context object and datasource!");
			//Initiate connection with DB
			Connection connection = ds.getConnection();
			System.out.println("assable_all_employees_page: I've connected to the DB! Wow!");
			//Initiate Statement object to run queries on
			Statement queryRunner = connection.createStatement();
			String viewName = "user" + userid.toString();
			ResultSet response = queryRunner.executeQuery("SELECT * FROM " + viewName +";");
			System.out.println("assable_all_employees_page: I've got everyone from the user's view now.");
			ArrayList<String> employees = new ArrayList<>();
			Integer counter = 0;
			while(response.next())
			{
				Integer val = response.getInt("EMPLOYEE_ID");
				employees.add(val.toString());
			}
			response.close();
			System.out.println("assable_all_employees_page: All the userids have been gatherd, now entering the for loop.");
			for(int i = 0; i<employees.size(); i++)
			{
				ResultSet response1 = queryRunner.executeQuery("SELECT \"EMPLOYEE_FIRST_NAME\", \"EMPLOYEE_LAST_NAME\", \"SUPERVISOR_ID\" FROM public."+viewName+" WHERE \"EMPLOYEE_ID\" ="+employees.get(i)+";");
				
				String fname = "";
				String lname = "";
				Integer supervisorid = 0;
				
				while(response1.next())
				{
					fname = response1.getString("EMPLOYEE_FIRST_NAME");
					lname = response1.getString("EMPLOYEE_LAST_NAME"); 	
					supervisorid = response1.getInt("SUPERVISOR_ID");
				}
				response1.close();
				ResultSet response2 = queryRunner.executeQuery("SELECT \"EMPLOYEE_FIRST_NAME\", \"EMPLOYEE_LAST_NAME\" FROM public.\"Employee\" WHERE \"EMPLOYEE_ID\" ="+supervisorid.toString()+";");
				
				String superfname = "";
				String superlname = "";
				
				while(response2.next())
				{
					superfname = response2.getString("EMPLOYEE_FIRST_NAME");
					superlname = response2.getString("EMPLOYEE_LAST_NAME");
				}
				response2.close();
				output = output + 
						"<tr>" + 
						"	<td class=\"text-left\"><a class=\"text-black-50\" href=MainController?userid="+employees.get(i)+">"+fname+" "+lname+"</a></td>" + 
						"	<td class=\"text-center\">11-28-2019</td>" + 
						"	<td class=\"text-center\">"+superfname+" "+superlname+"<br></td>" + 
						"	<td class=\"text-center\">"+"<br></td>" + 
						"	<td class=\"text-center\"><a class=\"text-dark\" href=\"r_profile.jsp\"><i class=\"fas fa-check\" style=\"color: rgb(112,127,222);\"></i></a></td>" + 
						"	<td class=\"text-center\"><a class=\"text-dark\" href=\"r_profile.jsp\"><i class=\"fas fa-check\" style=\"color: rgb(112,127,222);\"></i></a></td>" + 
						"</tr>";
			}
			queryRunner.close();
		}
		catch(Exception err)
		{
			System.out.println("assable_all_employees_page: Something went wrong.");
		}
		return output;
	}
	public String[] assable_r_profile(Integer userid, Integer targetid)
	{
		String[] output = new String[4];
		try
		{
			//create a new context
			InitialContext contxt = new InitialContext();
			// refer the new context to the datasource you want to use
			DataSource ds = (DataSource) contxt.lookup("java:/comp/env/jdbc/postgres");
			System.out.println("assable_r_profile: I have the context object and datasource!");
			//Initiate connection with DB
			Connection connection = ds.getConnection();
			System.out.println("assable_r_profile: I've connected to the DB! Wow!");
			//Initiate Statement object to run queries on
			Statement queryRunner = connection.createStatement();
			String viewName = "user" + userid.toString();
			ResultSet response1 = queryRunner.executeQuery("SELECT \"EMPLOYEE_FIRST_NAME\", \"EMPLOYEE_LAST_NAME\", \"SUPERVISOR_ID\",\"PROJECTED_RATING\" FROM public."+viewName+" WHERE \"EMPLOYEE_ID\" ="+targetid.toString()+";");
			
			String fname = "";
			String lname = "";
			Integer supervisorid = 0;
			Integer projectedratingid = 0;
			
			while(response1.next())
			{
				fname = response1.getString("EMPLOYEE_FIRST_NAME");
				lname = response1.getString("EMPLOYEE_LAST_NAME"); 	
				supervisorid = response1.getInt("SUPERVISOR_ID");
				projectedratingid = response1.getInt("PROJECTED_RATING");
			}
			response1.close();
			ResultSet response2 = queryRunner.executeQuery("SELECT \"EMPLOYEE_FIRST_NAME\", \"EMPLOYEE_LAST_NAME\" FROM public.\"Employee\" WHERE \"EMPLOYEE_ID\" ="+supervisorid.toString()+";");
			
			String superfname = "";
			String superlname = "";
			
			while(response2.next())
			{
				superfname = response2.getString("EMPLOYEE_FIRST_NAME");
				superlname = response2.getString("EMPLOYEE_LAST_NAME");
			}
			response2.close();
			ResultSet response3 = queryRunner.executeQuery("SELECT \"RATING_NAME\" FROM public.\"Rating\" WHERE \"RATING_ID\" = "+projectedratingid.toString()+";");
			
			String ratingname = "";
			while(response3.next())
			{
				ratingname = response3.getString("RATING_NAME");
			}
			response3.close();
			output[0] = fname+" "+lname;
			output[1] = ratingname;
			output[2] = targetid.toString();
			output[3] = superfname+" "+superlname;
		}
		catch(Exception err)
		{
			System.out.println("assable_r_profile: Something went wrong.");
		}
		return output;
	}
}
