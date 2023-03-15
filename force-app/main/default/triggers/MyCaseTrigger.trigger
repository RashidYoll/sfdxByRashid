trigger MyCaseTrigger on Case (before insert, after insert, before update, after update) {
    
    if(Trigger.isBefore && Trigger.isInsert){
        CaseTriggerHandler.ifCaseContactIdOrSubjectIsNull(Trigger.new);    
    }
}