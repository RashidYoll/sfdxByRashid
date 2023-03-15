trigger MyEmployeeTrigger on Employee__c (before insert, after insert, before delete) {
    
    if(Trigger.isBefore && Trigger.isDelete){
        EmployeeTriggerHandler.deleteEmpolyee(Trigger.oldMap);
    }
}