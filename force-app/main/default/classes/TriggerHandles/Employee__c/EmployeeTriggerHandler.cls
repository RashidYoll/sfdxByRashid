public with sharing class EmployeeTriggerHandler {
    public static void deleteEmpolyee(Map<Id, Employee__c> oldEmployee){
        // List<Id> depIds = new List<Id>();

        // depIds.addAll(oldEmployee.keyset());

        // List<Department__c> dep = [SELECT Id FROM Department__c WHERE Head_of_Department__c IN :depIds];
        // if(dep.size() > 0){
        //     Trigger.old.get(0).addError('You can\'t delete this Employee which related to Department');
        // }
    }
}