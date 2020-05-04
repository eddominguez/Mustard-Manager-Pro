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
	 public Employee getEmployee(Integer index) 
	 { 
		 return employees.get(index); 
	 }
	 public void setEmployees(ArrayList<Employee> employees) 
	 {
		 this.employees = employees; 
	 } 
	 public Integer len()
	 {
		 return employees.size();
	 }
	 public String Strlen()
	 {
		 Integer val = employees.size();
		 return val.toString();
	 }
}//End class Employees.java 

