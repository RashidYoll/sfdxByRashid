public class StudentDSOQL {
    public static void displayStudentName(List<String> students, String objectName, 
                                          Object conditionalValue){
        
        String r = 'SELECT Id';
        for(String stu : students){
            r += ', ' + stu;
        }
     	r += ' FROM ' + objectName + ' LIMIT ' + conditionalValue;
        System.debug(r);
		
                                              
		List<SObject> records = Database.query(r);

        for(SObject rec : records){
            for(String stu : students){
                System.debug(rec.get(stu));
            }
            System.debug('=============');
        }		                     	                            
    }
}