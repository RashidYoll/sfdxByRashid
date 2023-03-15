public class M9Homework7 {
    public static void show(List<Integer> mylist, String fullName){
        
        try{
            Integer a = mylist.get(0) / mylist.get(1);
            fullName = fullName.toLowerCase();
            System.debug(a);
            System.debug(fullName);
        }
        catch(ListException le){
            System.debug('Cause: ' + le.getCause());
            System.debug('Message: ' + le.getMessage());
            System.debug('List Exception caught!');
        }
        catch(NullPointerException np){
            System.debug('Cause: ' + np.getCause());
            System.debug('Message: ' + np.getMessage());
            System.debug('Null Pointer Exception caught!');
        }
        catch(Exception e){
            System.debug('Cause: ' + e.getCause());
            System.debug('Message: ' + e.getMessage());
        }
    }
}