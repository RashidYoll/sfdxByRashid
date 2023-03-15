public with sharing class OpportunityTriggerHandler {
    public static void updateNumberOfOpportunity(List<Opportunity> newOpportunity){     //M11 - Homework 8
        // List<Id> accIds = new List<Id>();
        // for(Opportunity opp : newOpportunity){
        //     accIds.add(opp.AccountId);
        // }
        // List<Opportunity> opps = [SELECT Id, AccountId FROM Opportunity WHERE AccountId IN : accIds];
        // List<Account> accounts = new List<Account>();
        // for(Id ad : accIds){
        //     Integer count = 0;
        //     for(Opportunity op : opps){
        //         if(ad == op.AccountId){
        //             count++;
        //         }
        //     }
        //     Account acc = new Account(Id = ad);
        //     acc.Number_Of_Opportunities__c = count;
        //     accounts.add(acc);
        // }
        // UPDATE accounts;
    }
}