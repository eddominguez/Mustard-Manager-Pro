package com.Web;

//Employees.java
//Stores employees into an array
import java.util.ArrayList;

 public class Employees { 
	 private ArrayList<Employee> employees;
	 public Employees() 
	 { 
		 employees = new ArrayList<>(); 
	 } 
	 //Add employee
	 public void addEmployee(Employee employee) 
	 { 
		 employees.add(employee); 
	 } 
	 
	 //gets and sets for the ArrayList employee 
	 public ArrayList<Employee> getEmployees() 
	 { 
		 return employees; 
	 }
	 public void setEmployees(ArrayList<Employee> employees) 
	 {
		 this.employees = employees; 
	 } 
}//End class Employees.java 

