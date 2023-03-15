public class M9Homework8 {
    public static void show(){
        try{
            String str = null;
            str = str.toLowerCase();
            
            Account acc = new Account();
            INSERT acc;
            
            List<Integer> listnum = new List<Integer>{12,34,55};
			listnum.get(5);
            
            Integer p = 5/0;
            
            Employee__c emp = [SELECT Id FROM Employee__c WHERE First_Name__c = 'Coshqun'];
            
        }
        catch(DmlException de){
            System.debug('Cause: ' + de.getCause());
            System.debug('Message: ' + de.getMessage());
            System.debug('DML Exception caught!');
        }
        catch(NullPointerException np){
            System.debug('Cause: ' + np.getCause());
            System.debug('Message: ' + np.getMessage());
            System.debug('Null Pointer Exception caught!');
        }
        catch(QueryException qe){
            System.debug('Cause: ' + qe.getCause());
            System.debug('Message: ' + qe.getMessage());
            System.debug('Query Exception caught!');
        }
        catch(ListException le){
            System.debug('Cause: ' + le.getCause());
            System.debug('Message: ' + le.getMessage());
            System.debug('List Exception caught!');
        }
        catch(MathException me){
            System.debug('Cause: ' + me.getCause());
            System.debug('Message: ' + me.getMessage());
            System.debug('Math Exception caught!');
        }
        catch(Exception e){
            System.debug('Cause: ' + e.getCause());
            System.debug('Message: ' + e.getMessage());
        }
    }
}