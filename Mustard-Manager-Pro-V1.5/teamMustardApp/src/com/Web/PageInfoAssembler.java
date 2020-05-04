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
			
			//This section gets a list of all the employee id's in the user's view
			String viewName = "user" + userid.toString();
			ResultSet response = queryRunner.executeQuery("SELECT * FROM " + viewName +";");
			System.out.println("assable_all_employees_page: I've got everyone from the user's view now.");
			ArrayList<String> employees = new ArrayList<>();
			while(response.next())
			{
				employees.add(response.getString("EMPLOYEE_ID"));
			}
			
			System.out.println("assable_all_employees_page: All the employee ids have been gatherd, now entering the for loop.");
			for(int i = 0; i<employees.size(); i++)
			{
				
				//This section gets the employee's first name, last name, their supervisors's employee id, and their projected rating id
				String fname = "", lname = "", supervisorid = "", projectedratingid = "";
				{
					response = queryRunner.executeQuery("SELECT \"EMPLOYEE_FIRST_NAME\", \"EMPLOYEE_LAST_NAME\", \"SUPERVISOR_ID\",\"PROJECTED_RATING\" FROM public."+viewName+" WHERE \"EMPLOYEE_ID\" ="+employees.get(i)+";");
					if(response.next())
					{
						fname = response.getString("EMPLOYEE_FIRST_NAME");
						lname = response.getString("EMPLOYEE_LAST_NAME");
						supervisorid = response.getString("SUPERVISOR_ID");
						projectedratingid = response.getString("PROJECTED_RATING");
					}
				}
				
				//This section gets the employee's supervisors's first and last name.
				String superfname = "", superlname = "";
				{
					response = queryRunner.executeQuery("SELECT \"EMPLOYEE_FIRST_NAME\", \"EMPLOYEE_LAST_NAME\" FROM public.\"Employee\" WHERE \"EMPLOYEE_ID\" ="+supervisorid+";");
					if(response.next())
					{
						superfname = response.getString("EMPLOYEE_FIRST_NAME");
						superlname = response.getString("EMPLOYEE_LAST_NAME");
					}
				}
				
				//This section gets the name of the employee's projected rating
				String ratingname = "";
				{
					response = queryRunner.executeQuery("SELECT \"RATING_NAME\" FROM public.\"Rating\" WHERE \"RATING_ID\" = "+projectedratingid+";");
					if(response.next())
					{
						ratingname = response.getString("RATING_NAME");
					}
				}
				
				if(supervisorid.equals(userid.toString()))
				{
					output = output + 
							"<tr>" + 
							"	<td class=\"text-left\"><a class=\"text-black-50\" href=MainController?userid="+employees.get(i)+">"+fname+" "+lname+"</a></td>" + 
							"	<td class=\"text-center\">11-28-2019</td>" + 
							"	<td class=\"text-left\">"+superfname+" "+superlname+"</td>" + 
							"	<td class=\"text-center\">"+ratingname+"<br></td>" + 
							"	<td class=\"text-center\"><a class=\"text-dark\" href=MainController?userid="+employees.get(i)+"><i class=\"fas fa-check\" style=\"color: rgb(112,127,222);\"></i></a></td>" + 
							"	<td class=\"text-center\"><a class=\"text-dark\" href=MainController?userid="+employees.get(i)+"><i class=\"fas fa-check\" style=\"color: rgb(112,127,222);\"></i></a></td>" + 
							"</tr>";
				}
				else
				{
					output = output + 
							"<tr>" + 
							"	<td class=\"text-left\"><a class=\"text-black-50\" href=MainController?userid="+employees.get(i)+">"+fname+" "+lname+"</a></td>" + 
							"	<td class=\"text-center\">11-28-2019</td>" + 
							"	<td class=\"text-left\"><a class=\"text-black-50\" href=MainController?userid="+supervisorid+">"+superfname+" "+superlname+"</a></td>" + 
							"	<td class=\"text-center\">"+ratingname+"<br></td>" + 
							"	<td class=\"text-center\"><a class=\"text-dark\" href=MainController?userid="+employees.get(i)+"><i class=\"fas fa-check\" style=\"color: rgb(112,127,222);\"></i></a></td>" + 
							"	<td class=\"text-center\"><a class=\"text-dark\" href=MainController?userid="+employees.get(i)+"><i class=\"fas fa-check\" style=\"color: rgb(112,127,222);\"></i></a></td>" + 
							"</tr>";
				}
			}
			queryRunner.close();
			connection.close();
		}
		catch(Exception err)
		{
			System.out.println("assable_all_employees_page: Something went wrong.");
			System.out.println(err.toString());
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
			ResultSet response;
			
			//This section gets the employee's first name, last name, their supervisors's employee id, and their projected rating id
			String fname = "", lname = "", supervisorid = "", projectedratingid = "";
			{
				response = queryRunner.executeQuery("SELECT \"EMPLOYEE_FIRST_NAME\", \"EMPLOYEE_LAST_NAME\", \"SUPERVISOR_ID\",\"PROJECTED_RATING\" FROM public."+viewName+" WHERE \"EMPLOYEE_ID\" ="+targetid.toString()+";");
				if(response.next())
				{
					fname = response.getString("EMPLOYEE_FIRST_NAME");
					lname = response.getString("EMPLOYEE_LAST_NAME");
					supervisorid = response.getString("SUPERVISOR_ID");
					projectedratingid = response.getString("PROJECTED_RATING");
				}
			}
			
			//This section gets the employee's supervisors's first and last name.
			String superfname = "", superlname = "";
			{
				response = queryRunner.executeQuery("SELECT \"EMPLOYEE_FIRST_NAME\", \"EMPLOYEE_LAST_NAME\" FROM public.\"Employee\" WHERE \"EMPLOYEE_ID\" ="+supervisorid+";");
				if(response.next())
				{
					superfname = response.getString("EMPLOYEE_FIRST_NAME");
					superlname = response.getString("EMPLOYEE_LAST_NAME");
				}
			}
			
			//This section gets the name of the employee's projected rating
			String ratingname = "";
			{
				response = queryRunner.executeQuery("SELECT \"RATING_NAME\" FROM public.\"Rating\" WHERE \"RATING_ID\" = "+projectedratingid+";");
				if(response.next())
				{
					ratingname = response.getString("RATING_NAME");
				}
			}
			
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
	public String assable_r_ratings(Integer userid)
	{
		String output = "";
		try
		{
			//create a new context
			InitialContext contxt = new InitialContext();
			// refer the new context to the datasource you want to use
			DataSource ds = (DataSource) contxt.lookup("java:/comp/env/jdbc/postgres");
			System.out.println("assable_r_ratings: I have the context object and datasource!");
			//Initiate connection with DB
			Connection connection = ds.getConnection();
			System.out.println("assable_r_ratings: I've connected to the DB! Wow!");
			//Initiate Statement object to run queries on
			Statement queryRunner = connection.createStatement();
			String viewName = "user" + userid.toString();
			ResultSet response = queryRunner.executeQuery("SELECT * FROM " + viewName +";");
			System.out.println("assable_r_ratings: I've got everyone from the user's view now.");
			ArrayList<Integer> projratings = new ArrayList<>();
			while(response.next())
			{
				projratings.add(response.getInt("PROJECTED_RATING"));
			}

			Integer[] ratingCounts = {0,0,0,0,0,0,0,0};
			for(int i = 0; i<projratings.size(); i++)
			{
				if(projratings.get(i) == 101)
				{
					ratingCounts[0]++;
				}
				else if(projratings.get(i) == 102)
				{
					ratingCounts[1]++;
				}
				else if(projratings.get(i) == 103)
				{
					ratingCounts[2]++;
				}
				else if(projratings.get(i) == 104)
				{
					ratingCounts[3]++;
				}
				else if(projratings.get(i) == 105)
				{
					ratingCounts[4]++;
				}
				else if(projratings.get(i) == 106)
				{
					ratingCounts[5]++;
				}
				else if(projratings.get(i) == 107)
				{
					ratingCounts[6]++;
				}
				else if(projratings.get(i) == 108)
				{
					ratingCounts[7]++;
				}
			}
			Integer total = ratingCounts[0]+ratingCounts[1]+ratingCounts[2]+ratingCounts[3]+ratingCounts[4]+ratingCounts[5]+ratingCounts[6]+ratingCounts[7];
			System.out.println(total.toString());
			Float proportion;
			for(int i = 0; i<8; i++)
			{
				if(i==0)
				{
					proportion = (float) ratingCounts[i]/total*100;
					output = output + 
							"<tr>" + 
							"	<td class=\"text-center\">EC</td>" +
							"	<td class=\"text-center\">"+ratingCounts[i].toString()+"</td>" +
							"	<td class=\"text-center\">"+proportion.toString()+"</td>" +
							"</tr>";
				}
				else if(i==1)
				{
					proportion = (float) ratingCounts[i]/total*100;
					output = output + 
							"<tr>" + 
							"	<td class=\"text-center\">SC+</td>" +
							"	<td class=\"text-center\">"+ratingCounts[i].toString()+"</td>" +
							"	<td class=\"text-center\">"+proportion.toString()+"</td>" +
							"</tr>";
				}
				else if(i==2)
				{
					proportion = (float) ratingCounts[i]/total*100;
					output = output + 
							"<tr>" + 
							"	<td class=\"text-center\">SC</td>" +
							"	<td class=\"text-center\">"+ratingCounts[i].toString()+"</td>" +
							"	<td class=\"text-center\">"+proportion.toString()+"</td>" +
							"</tr>";
				}
				else if(i==3)
				{
					proportion = (float) ratingCounts[i]/total*100;
					output = output + 
							"<tr>" + 
							"	<td class=\"text-center\">SC-</td>" +
							"	<td class=\"text-center\">"+ratingCounts[i].toString()+"</td>" +
							"	<td class=\"text-center\">"+proportion.toString()+"</td>" +
							"</tr>";
				}
				else if(i==3)
				{
					proportion = (float) ratingCounts[i]/total*100;
					output = output + 
							"<tr>" + 
							"	<td class=\"text-center\">SC-</td>" +
							"	<td class=\"text-center\">"+ratingCounts[i].toString()+"</td>" +
							"	<td class=\"text-center\">"+proportion.toString()+"</td>" +
							"</tr>";
				}
				else if(i==4)
				{
					proportion = (float) ratingCounts[i]/total*100;
					output = output + 
							"<tr>" + 
							"	<td class=\"text-center\">NI</td>" +
							"	<td class=\"text-center\">"+ratingCounts[i].toString()+"</td>" +
							"	<td class=\"text-center\">"+proportion.toString()+"</td>" +
							"</tr>";
				}
				else if(i==5)
				{
					proportion = (float) ratingCounts[i]/total*100;
					output = output + 
							"<tr>" + 
							"	<td class=\"text-center\">OP</td>" +
							"	<td class=\"text-center\">"+ratingCounts[i].toString()+"</td>" +
							"	<td class=\"text-center\">"+proportion.toString()+"</td>" +
							"</tr>";
				}
				else if(i==6)
				{
					proportion = (float) ratingCounts[i]/total*100;
					output = output + 
							"<tr>" + 
							"	<td class=\"text-center\">SP</td>" +
							"	<td class=\"text-center\">"+ratingCounts[i].toString()+"</td>" +
							"	<td class=\"text-center\">"+proportion.toString()+"</td>" +
							"</tr>";
				}
				else if(i==7)
				{
					proportion = (float) ratingCounts[i]/total*100;
					output = output + 
							"<tr>" + 
							"	<td class=\"text-center\">UP</td>" +
							"	<td class=\"text-center\">"+ratingCounts[i].toString()+"</td>" +
							"	<td class=\"text-center\">"+proportion.toString()+"</td>" +
							"</tr>";
				}
			}
			queryRunner.close();
		}
		catch(Exception err)
		{
			System.out.println("assable_r_ratings: Something went wrong.");
		}
		return output;
	}
}
