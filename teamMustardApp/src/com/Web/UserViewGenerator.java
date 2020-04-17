package com.Web;

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


public class UserViewGenerator
{
	public List<Integer> assembleEmployeeListPage(Integer userid)
	{
		List<Integer> EmployeeIDArray = new ArrayList<Integer>();
		List<Integer> SupervisorIDArray = new ArrayList<Integer>();
		List<Integer> outputIDArray = new ArrayList<Integer>();
		try
		{
			//create a new context
			InitialContext contxt = new InitialContext();
			// refer the new context to the datasource you want to use
			DataSource ds = (DataSource) contxt.lookup("java:/comp/env/jdbc/postgres");
			System.out.println("UserViewGenerator: I have the context object and datasource!");
			//Initiate connection with DB
			Connection connection = ds.getConnection();
			System.out.println("UserViewGenerator: I've connected to the DB! Wow!");
			//Initiate Statement object to run queries on
			Statement queryRunner = connection.createStatement(); 
			//Response is basically the return table from the query.
			ResultSet response = queryRunner.executeQuery("SELECT \"EMPLOYEE_ID\",\"SUPERVISOR_ID\" FROM public.\"Employee\" ORDER BY \"EMPLOYEE_ID\";");
			
			//Add all of the Employee_ID's and Supervisor_ID's to their respective arrays
		    while (response.next()) 
		    {
		    	EmployeeIDArray.add(response.getInt("EMPLOYEE_ID"));
		    	SupervisorIDArray.add(response.getInt("SUPERVISOR_ID"));
		    }
		    
		    
			outputIDArray = recSearch(EmployeeIDArray,SupervisorIDArray,userid);
			System.out.println("UserViewGenerator: The subordination array has been computed, I'll make the proper view now."); //TODO: Remove
			
			String userIDString = "";
			for(int i = 0; i<outputIDArray.size();i++)
			{
				if(i == outputIDArray.size()-1) //This if statement is here so the last entry doesn't have a following comma
				{
					userIDString = userIDString + outputIDArray.get(i).toString();	
				}
				else
				{
					userIDString = userIDString + outputIDArray.get(i).toString()+",";	
				}
			}
			queryRunner.execute("CREATE VIEW user"+userid.toString()+" AS SELECT * FROM public.\"Employee\" WHERE \"EMPLOYEE_ID\" IN ("+userIDString+")");
			System.out.println("UserViewGenerator: The user's view has been created. Just finishing up now."); //TODO: Remove
			queryRunner.close();
		}
		catch(Exception err)
		{
			System.out.println("UserViewGenerator: Something went wrong.");
		}
		return outputIDArray;
	}
	private List<Integer> recSearch(List<Integer> EmployeeIDArray,List<Integer> SupervisorIDArray,Integer userid)
	{
		System.out.println("recSearch: I was called! Lucky me...");//TODO: REMOVE
		List<Integer> output = new ArrayList<Integer>();
		output.add(userid);
		Integer Matches = 0;
		while(true)
		{
			Matches = 0;
			for(int i = 0; i<SupervisorIDArray.size();i++)
			{
				if (output.contains(SupervisorIDArray.get(i)))
				{
					output.add(EmployeeIDArray.get(i));
					EmployeeIDArray.remove(i);
					SupervisorIDArray.remove(i);
					Matches++;
				}
			}
			if (Matches == 0)
			{
				break;
			}
		}
		output.remove(0);
		return output;
	}
}
