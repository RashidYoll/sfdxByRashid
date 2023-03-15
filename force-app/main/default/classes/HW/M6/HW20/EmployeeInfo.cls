public with sharing class EmployeeInfo {
    public static void show() {

        List<Employee__c> employees = [SELECT First_Name__c, Last_Name__C, Join_Date__c FROM Employee__c ORDER BY Join_Date__c DESC];

        for(Employee__c emp : employees){
            System.debug('Employee Name: ' + emp.First_Name__c + ' ' + emp.Last_Name__c);
            System.debug('Joining Date: ' + emp.Join_Date__c);
            System.debug('--------------------------------');
        }

    }
}