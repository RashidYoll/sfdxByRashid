public class M7Homework24 {
    public static void show(){

        Employee__c emp1 = new Employee__c();
        emp1.First_Name__c = 'Tony';
        emp1.Last_Name__c = 'Stark';
        
        Database.insert(emp1);
        
        Employee__c emp2 = [SELECT Id FROM Employee__c WHERE First_Name__c = 'Tony' AND Last_Name__c = 'Stark' LIMIT 1];
        Database.delete(emp2);
        
        List<Employee__c> emp3 = [SELECT Id FROM Employee__c WHERE First_Name__c = 'Tony' AND Last_Name__c = 'Stark' ALL ROWS];
        Database.undelete(emp3);
    }
}