//Class retrieveEmployees
//retrieves EMPLOYEE_ID
public class retrieveEmployees {
	
	public String retrieve(Integer[] EMPLOYEE_ID_LIST) {
		
		String query;
		String queryPart1 = "SELECT * FROM \"Employee\" WHERE \"EMPLOYEE_ID\" IN "; //Start of query
		String queryPart2 = "";
		String convertToString;
		
		for(int i = 0; i < EMPLOYEE_ID_LIST.length; i++) { 
			
			//Converts the integer in the list to a String
			convertToString = EMPLOYEE_ID_LIST[i].toString();
			
			//To ensure the first pass through does not add a comma to the query
			if (i == 0){
				queryPart2 = convertToString;
			}
			
			//Appends integer to variablequeryPart2
			else {
				queryPart2 = queryPart2 + "," + convertToString;
			}
		}	
		//creates final query
		query = queryPart1 + "(" + queryPart2 + ")"; 
		
		return query;
	
	}//end Method retrieve 
	
}//end class retrieveEmployees