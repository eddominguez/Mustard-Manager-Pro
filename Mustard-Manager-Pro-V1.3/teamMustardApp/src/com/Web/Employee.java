package com.Web;

//class Employee.java for MMP
//Attributes which require DATE have been given attribute String. 
public class Employee 
{
	private int EMPLOYEE_ID; 
	private String EMPLOYEE_FIRST_NAME; 
	private String EMPLOYEE_LAST_NAME; 
	private String EMPLOYEE_MIDDLE_INITIAL;
	private int JOB_ID; 
	private int DEPARTMENT_ID; 
	private String REVIEW_PERIOD_START; 
	private String REVIEW_PERIOD_END; 
	private int CURRENT_RATING_ID; 
	private double CURRENT_SALARY; 
	private int SUPERVISOR_ID;
	
	//Employee Constructor
	public Employee(
			int EMPLOYEE_ID, 
			String EMPLOYEE_FIRST_NAME, 
			String EMPLOYEE_LAST_NAME,
			String EMPLOYEE_MIDDLE_INITIAL,
			int JOB_ID,
			int DEPARTMENT_ID,
			String REVIEW_PERIOD_START,
			String REVIEW_PERIOD_END,
			int CURRENT_RATING_ID,
			double CURRENT_SALARY, 
			int SUPERVISOR_ID)
	{
		this.EMPLOYEE_ID = EMPLOYEE_ID;
		this.EMPLOYEE_FIRST_NAME = EMPLOYEE_FIRST_NAME;
		this.EMPLOYEE_LAST_NAME = EMPLOYEE_LAST_NAME;
		this.EMPLOYEE_MIDDLE_INITIAL = EMPLOYEE_MIDDLE_INITIAL;
		this.JOB_ID = JOB_ID;
		this.DEPARTMENT_ID = DEPARTMENT_ID;
		this.REVIEW_PERIOD_START = REVIEW_PERIOD_START;
		this.REVIEW_PERIOD_END = REVIEW_PERIOD_END;
		this.CURRENT_RATING_ID = CURRENT_RATING_ID;
		this.CURRENT_SALARY = CURRENT_SALARY;
		this.SUPERVISOR_ID = SUPERVISOR_ID;
	}
	
	//get and set EMPLOYEE_ID
	public int getEMPLOYEE_ID() 
	{
		return EMPLOYEE_ID;
	}
	public void setEMPLOYEE_ID(int EMPLOYEE_ID) 
	{
		this.EMPLOYEE_ID = EMPLOYEE_ID;
	}
	
	//get and set EMPLOYEE_FIRST_NAME
	public String getEMPLOYEE_FIRST_NAME() 
	{
		return EMPLOYEE_FIRST_NAME;
	}
	public void setEMPLOYEE_FIRST_NAME(String EMPLOYEE_FIRST_NAME) 
	{
		this.EMPLOYEE_FIRST_NAME = EMPLOYEE_FIRST_NAME;
	}
	
	//get and set EMPLOYEE_LAST_NAME
	public String getEMPLOYEE_LAST_NAME() 
	{
		return EMPLOYEE_LAST_NAME;
	}
	public void setEMPLOYEE_LAST_NAME(String EMPLOYEE_LAST_NAME) 
	{
		this.EMPLOYEE_LAST_NAME = EMPLOYEE_LAST_NAME;
	}
	
	//get and set EMPLOYEE_MIDDLE_INITIAL
	public String getEMPLOYEE_MIDDLE_INITIAL() 
	{
		return EMPLOYEE_MIDDLE_INITIAL;
	}
	public void setEMPLOYEE_MIDDLE_INITIAL(String EMPLOYEE_MIDDLE_INITIAL) 
	{
		this.EMPLOYEE_MIDDLE_INITIAL = EMPLOYEE_MIDDLE_INITIAL;
	}
	
	//get and set JOB_ID
	public int getJOB_ID() 
	{
		return JOB_ID;
	}
	public void setJOB_ID(int JOB_ID) 
	{
		this.JOB_ID = JOB_ID;
	}
	
	//get and set DEPARTMENT_ID
	public int getDEPARTMENT_ID() 
	{
		return DEPARTMENT_ID;
	}
	public void setDEPARTMENT_ID(int DEPARTMENT_ID) 
	{
		this.DEPARTMENT_ID = DEPARTMENT_ID;
	}
	
	//get and set REVIEW_PERIOD_START
	public String getREVIEW_PERIOD_START() 
	{
		return REVIEW_PERIOD_START;
	}
	public void setREVIEW_PERIOD_START(String REVIEW_PERIOD_START) 
	{
		this.REVIEW_PERIOD_START = REVIEW_PERIOD_START;
	}
	
	//get and set REVIEW_PERIOD_END
	public String getREVIEW_PERIOD_END() 
	{
		return REVIEW_PERIOD_END;
	}
	public void setREVIEW_PERIOD_END(String REVIEW_PERIOD_END) 
	{
		this.REVIEW_PERIOD_END = REVIEW_PERIOD_END;
	}
	
	//get and set CURRENT_RATING_ID
	public int getCURRENT_RATING_ID() 
	{
		return CURRENT_RATING_ID;
	}
	public void setCURRENT_RATING_ID(int CURRENT_RATING_ID) 
	{
		this.CURRENT_RATING_ID = CURRENT_RATING_ID;
	}
	
	//get and set CURRENT_SALARY
	public double getCURRENT_SALARY() 
	{
		return CURRENT_SALARY;
	}
	public void setCURRENT_SALARY(double CURRENT_SALARY) 
	{
		this.CURRENT_SALARY = CURRENT_SALARY;
	}
	
	//get and set for SUPEVISOR_ID
	public int getSUPEVISOR_ID() 
	{
		return SUPERVISOR_ID;
	}
	public void setSUPEVISOR_ID(int SUPERVISOR_ID) 
	{
		this.SUPERVISOR_ID = SUPERVISOR_ID;
	}
}//End Employee class
