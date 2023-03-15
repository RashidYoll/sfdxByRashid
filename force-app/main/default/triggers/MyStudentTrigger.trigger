trigger MyStudent on Student__c (before insert, after insert, before delete) {
    
    if(Trigger.isBefore && Trigger.isDelete){
        StudentTriggerHandler.checkIfHaveExamRecord(Trigger.oldMap);
    }
}