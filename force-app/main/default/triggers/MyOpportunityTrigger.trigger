trigger MyOpportunityTrigger on Opportunity (before insert, after insert, after update, after delete) {
    if(Trigger.isAfter && Trigger.isInsert){
        OpportunityTriggerHandler.updateNumberOfOpportunity(Trigger.new);
    }
    if(Trigger.isAfter && Trigger.isUpdate){
        System.debug(Trigger.New[0].AccountId);
        OpportunityTriggerHandler.updateNumberOfOpportunity(Trigger.new);
        OpportunityTriggerHandler.updateNumberOfOpportunity(Trigger.old);
    }
    if(Trigger.isAfter && Trigger.isDelete){
        OpportunityTriggerHandler.updateNumberOfOpportunity(Trigger.old);
    }
}