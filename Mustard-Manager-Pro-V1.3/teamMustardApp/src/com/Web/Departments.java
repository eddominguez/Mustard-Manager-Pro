package com.Web;

import java.util.ArrayList;

 public class Departments { 
	 private ArrayList<Department> Departments = new ArrayList<>();
	 public void addDepartment(Department department) 
	 { 
		 Departments.add(department); 
	 } 
	 public ArrayList<Department> getEmployees() 
	 { 
		 return Departments; 
	 }
	 public void setEmployees(ArrayList<Department> Departments) 
	 {
		 this.Departments = Departments; 
	 } 
}

