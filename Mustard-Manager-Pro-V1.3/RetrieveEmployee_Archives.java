package fourTwoThree;

public class RetrieveEmployee_Archives {
	
	public String retrieve(Integer[] ID_List) {
		
		String qry;
		String qryp1 = "SELECT * FROM \"Employee_Archive\" WHERE \"ARCHIVE_ID\" IN "; //Start of query
		String qryp2 = "";
		String temp;
		
		for(int i=0; i < ID_List.length;i++) { 
			
			temp = ID_List[i].toString(); //Converts the Integer in the list to a String
			
			if (i==0){ //first pass doesn't include comma before it
				qryp2 = temp;
			}
			else {
				qryp2 = qryp2 + "," + temp; //appends the integers to the variable
			}
		}	
		qry = qryp1 + "(" + qryp2 + ")"; //Creates the final query
		
		return qry;
	
	}
}