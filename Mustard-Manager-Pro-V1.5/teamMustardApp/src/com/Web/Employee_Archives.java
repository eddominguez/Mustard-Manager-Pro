package com.Web;

import java.util.*;

public class Employee_Archives {
	private ArrayList<Employee_Archive> archives;
	public Employee_Archives() {
		archives = new ArrayList<>();
	}
	public void addArchive(Employee_Archive archive) {
		archives.add(archive);
	}
	public ArrayList<Employee_Archive> getEmployee_Archives()
	{
		return archives;
	}
	public void setEmployee_Archives(ArrayList<Employee_Archive> archives) {
		this.archives = archives;
	}
}