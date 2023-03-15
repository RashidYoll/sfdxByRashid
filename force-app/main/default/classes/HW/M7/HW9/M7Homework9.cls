public class M7Homework9 {
    public static void show(){
 		
        Employee__c es = new Employee__c();
        Department__c dep = [SELECT Id FROM Department__c WHERE Name__c = 'Information Technology' LIMIT 1];
        es.First_Name__c = 'Dwayne';
        es.Last_Name__c = 'Johnson';        
        es.Salary__c = 100000;
        Date currentDate = Date.today();
        es.Join_Date__c = Date.newInstance(currentDate.year(), currentDate.month(), 1);
        es.Department__c = dep.Id;
        INSERT es;
        System.debug(es.id);
    }
}