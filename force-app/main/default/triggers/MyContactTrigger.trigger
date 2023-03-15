trigger MyContactTrigger on Contact (before insert, after insert, before update, after update) {
    if(Trigger.isAfter && Trigger.isUpdate){
        if(!AvoidRecursion.alreadyCreated){
            AvoidRecursion.alreadyCreated = true;
            ContactTriggerHandler.updateContact(Trigger.new);
        }
    }
}