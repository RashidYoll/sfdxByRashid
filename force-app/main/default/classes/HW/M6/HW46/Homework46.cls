public with sharing class Homework46 {
    public static void show() {

        Integer more = 100000;
        Integer less = 50000;

        List<Employee__c> employees = [SELECT First_Name__c, Last_Name__c, Join_Date__c, Department__r.Short_Code__c 
                                                FROM Employee__c WHERE Salary__c > :more or Salary__c < :less];
        for(Employee__c emp : employees){
            System.debug('Employee Name: ' + emp.First_Name__c + ' ' + emp.Last_Name__c);
            System.debug('Joining Date: ' + emp.Join_Date__c);
            System.debug('Short Code: ' + emp.Department__r.Short_Code__c);
            System.debug('===============================');
        }    
    }
}