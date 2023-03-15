public class M7Homework5 {
    public static void show(){
        
        SObject obj = new Employee__c(First_Name__c = 'Rashid', Last_Name__c = 'Tanriverdiyev', Country__c = 'AZE',
                                     Join_Date__c = Date.today(), Email__c = 'rashid@yoll.io', Salary__c = 123000);
     	System.debug(obj);
        
        Employee__c emp = (Employee__c)obj;
        
        System.debug(emp);
    }
}