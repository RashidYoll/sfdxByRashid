public with sharing class EmployeeInfo2 {
    public static void show() {

        List<Employee__c> employees = [SELECT First_Name__c, Last_Name__c, Country__c, Email__c FROM Employee__c LIMIT 5];

        for(Employee__c emp : employees){
            System.debug('Employee Name: ' + emp.First_Name__c + ' ' + emp.Last_Name__c);
            System.debug('Country: ' + emp.Country__c);
            System.debug('Email: ' + emp.Email__c);
            System.debug('--------------------------------');
        }

    }
}