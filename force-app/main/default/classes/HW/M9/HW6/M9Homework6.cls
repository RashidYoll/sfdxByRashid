public class M9Homework6 {
    public static void show(String fullName){
        try{
	        List<String> name = fullName.split(' ');
        
    	    String name2 = '';
        
        	for(Integer index = 0; index < name.size()-1; index++){
            	name2 += name.get(index).substring(0, 1) + '. ';
        	}
        
        	name2 += name.get(name.size()-1);
        	
            System.debug(name2);    
        }
        catch(NullPointerException np){
            System.debug('Cause: ' + np.getCause());
            System.debug('Message: ' + np.getMessage());
            System.debug('Null Pointer Exception caught!');
        }
    }
}