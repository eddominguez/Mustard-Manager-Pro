package fourSixteen;

public class Employee_Archive {

		private int Archive_ID;
		private int Employee_ID;
		private int Supervisor_ID;
		private int Job_ID;
		private String Archive_date;
		private double Salary_before_increase;
		
		public Employee_Archive(
				int Archive_ID, int Employee_ID, int Supervisor_ID, int Job_ID,
				String Archive_date, double Salary_before_increase)
		{
			this.Archive_ID = Archive_ID;
			this.Employee_ID = Employee_ID;
			this.Supervisor_ID = Supervisor_ID;
			this.Job_ID = Job_ID;
			this.Archive_date = Archive_date;
			this.Salary_before_increase = Salary_before_increase;
			
		};
		
		public int getArchiveID() {
			return Archive_ID;
		}
		
		public void setArchiveID(int newArchiveID) {
			this.Archive_ID = newArchiveID;
		}
		
		public int getEmployee_ID() {
			return Employee_ID;
		}
		
		public void setEmployee_ID(int newEmployee_ID) {
			this.Employee_ID = newEmployee_ID;
		}
		
		public int getSupervisor_ID() {
			return Supervisor_ID;
		}
		
		public void setSupervisor_ID(int newSupervisor_ID) {
			this.Supervisor_ID = newSupervisor_ID;
		}
		
		public int getJob_ID() {
			return Job_ID ;
		}
		
		public void setJob_ID(int newJob_ID) {
			this.Job_ID = newJob_ID;
		}

		public String getArchive_date() {
			return Archive_date;
		}
		
		public void setArchive_date(String newArchive_date ) {
			this.Archive_date = newArchive_date;
		}
		
		public double getSalary_before_increase() {
			return Salary_before_increase;
		}
		
		public void setSalary_before_increase(double newSalary_before_increase ) {
			this.Salary_before_increase = newSalary_before_increase;
		}
		
}
