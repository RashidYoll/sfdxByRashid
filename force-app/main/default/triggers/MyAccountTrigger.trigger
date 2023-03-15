trigger MyAccountTrigger on Account (before insert, before update, after insert, after update, after delete, before delete, after undelete) {
    
    if(Trigger.isBefore && Trigger.isInsert){
        AccountTriggerHandler.ifAccountDescriptinAndRatingIsNull(Trigger.New);
        AccountTriggerHandler.ifAccountRatingOrIndustryIsNullShowError(Trigger.New);
        AccountTriggerHandler.ifAccountPhoneIsNullCopyBillingStreetToShipingStreet(Trigger.New);
        AccountTriggerHandler.ifMatchBillingTrueShipPotsCodMatchBillPostCod(Trigger.new);
    }
    
    if(Trigger.isAfter && Trigger.isInsert){
        AccountTriggerHandler.createOppys(Trigger.New);
    }
	
    if(Trigger.isBefore && Trigger.isUpdate){
        AccountTriggerHandler.updateAccountDescriptionAndIndustry(Trigger.New);
        AccountTriggerHandler.ifMatchBillingTrueShipPotsCodMatchBillPostCod(Trigger.new);
        AccountTriggerHandler.updateDescriptionForUpdates(Trigger.old, Trigger.new);
    }
    
	if(Trigger.isBefore && Trigger.isDelete){
		AccountTriggerHandler.deleteOppyAndContact(Trigger.oldMap);
        AccountTriggerHandler.cannotDeleteConAndOppy(Trigger.oldMap);
    }

    if(Trigger.isAfter && Trigger.isUndelete){
        AccountTriggerHandler.sendRestoredAccountMail(Trigger.new);
    }
}