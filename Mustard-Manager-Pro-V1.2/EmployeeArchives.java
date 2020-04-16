package fourSixteen;
import java.util.*;


public class EmployeeArchives {
	private ArrayList<Employee_Archive> archives;
	public EmployeeArchives() {
		archives = new ArrayList<>();
	}
	public void addArchive(Employee_Archive archive) {
		archives.add(Employee_Archive);
	}
	
	public ArrayList<Employee_Archive> getEmployee_Archives()
	{
		return archives;
	}
	public void setEmployee_Archives(ArrayList<Employee_Archive> archives) {
		this.archives = archives;
	}
}
