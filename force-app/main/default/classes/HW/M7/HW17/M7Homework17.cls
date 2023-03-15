public class M7Homework17 {
    public static void show(){
        Employee__c emp1 = new Employee__c();
        emp1.First_Name__c = 'Scarlett';
        emp1.Last_Name__c = 'Johansson';
        INSERT emp1;
        
        Employee__c emp2 = [SELECT Id FROM Employee__c 
                            WHERE First_Name__c = 'Scarlett' AND Last_Name__c = 'Johansson' LIMIT 1];
        DELETE emp2;
        
        List<Employee__c> emp3 = [SELECT Id FROM Employee__c 
                                  WHERE First_Name__c = 'Scarlett' AND Last_Name__c = 'Johansson' ALL ROWS];
        UNDELETE emp3;
    }
}