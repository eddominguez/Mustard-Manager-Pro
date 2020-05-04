package com.Web;

public class Department {
	private int DEPARTMENT_ID; 
	private String DEPARTMENT_NAME; 
	private String DEPARTMENT_DESC;
	public Department(
			int DEPARTMENT_ID,
			String DEPARTMENT_NAME,
			String DEPARTMENT_DESC
			)
	{
		this.DEPARTMENT_ID = DEPARTMENT_ID;
		this.DEPARTMENT_NAME = DEPARTMENT_NAME;
		this.DEPARTMENT_DESC = DEPARTMENT_DESC;
	}
	public int getDEPARTMENT_ID() 
	{
		return DEPARTMENT_ID;
	}
	public void setDEPARTMENT_ID(int DEPARTMENT_ID) 
	{
		this.DEPARTMENT_ID = DEPARTMENT_ID;
	}
	public String getDEPARTMENT_NAME() 
	{
		return DEPARTMENT_NAME;
	}
	public void setDEPARTMENT_NAME(String DEPARTMENT_NAME) 
	{
		this.DEPARTMENT_NAME = DEPARTMENT_NAME;
	}
	public String getDEPARTMENT_DESC() 
	{
		return DEPARTMENT_DESC;
	}
	public void setDEPARTMENT_DESC(String DEPARTMENT_DESC) 
	{
		this.DEPARTMENT_DESC = DEPARTMENT_DESC;
	}
}
