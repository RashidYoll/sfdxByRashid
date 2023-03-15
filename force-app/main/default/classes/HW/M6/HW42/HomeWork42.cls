public with sharing class HomeWork42 {
    public static void show() {

        Integer sal = 50000;

        List<Employee__c> employees = [SELECT First_Name__c, Last_Name__c, Country__c, Salary__c 
                                        FROM Employee__c WHERE Salary__c < :sal];

        for(Employee__c emp : employees){
            System.debug('Employee Name: ' + emp.First_Name__c + ' ' + emp.Last_Name__c);
            System.debug('Country: ' + emp.Country__c);
            System.debug('Salary: ' + emp.Salary__c);
        }                                        
    }
}