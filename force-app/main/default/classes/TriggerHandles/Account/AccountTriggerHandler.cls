public with sharing class AccountTriggerHandler {

    public static void ifAccountDescriptinAndRatingIsNull(List<Account> newAccount){
        // List<Account> accountList = newAccount;
        // for(Account acc : accountList){
        //     if(acc.Description == null && acc.Rating == null){
        //         acc.Description = 'Record Created';
        //         acc.Rating = 'Hot';
        //     }
        // }
    }

    public static void ifAccountRatingOrIndustryIsNullShowError(List<Account> newAccount){
        // List<Account> accountList = newAccount;
        // for(Account acc : accountList){
        //     if(acc.Rating == null){
        //     	acc.addError('Rating can not be blank');    
        //     }
        //     else if(acc.Industry == null){
        //         acc.addError('Industry can not be blank');
        //     }
        // }      
    }

    public static void ifAccountPhoneIsNullCopyBillingStreetToShipingStreet(List<Account> newAccount){
        // for(Account acc : newAccount){
        //     if(acc.Phone != null){
        //         acc.ShippingStreet = acc.BillingStreet;
        //     }
        // }
    }

    public static void createOppys(List<Account> newAccount){
        // List<Account> accountList = newAccount;
        // List<Opportunity> oppList = new List<Opportunity>();
        // for(Account acc : accountList){
        //     Opportunity opp = new Opportunity(Name='Opportunity 1', AccountId=acc.Id, StageName = 'Qualification', CloseDate = date.Today()+30);
        //     oppList.add(opp);
        // }
        // INSERT oppList; 
    }

    public static void updateAccountDescriptionAndIndustry(List<Account> newAccount){
        // List<Account> newAccountList = newAccount;
        // for(Account acc : newAccountList){
        //     acc.Description = 'Record Updated';
        //     if(acc.Industry == null){
        //         acc.Industry = 'Media';
        //     }
        // } 
    }

    public static void deleteOppyAndContact(Map<Id,Account> oldAccount){
        // List<Id> accId = new List<Id>();

        // accId.addAll(oldAccount.keyset());

        // List<Contact> contId = [SELECT Id FROM Contact WHERE AccountId IN :accId];
        // List<Opportunity> oppId = [SELECT Id FROM Opportunity WHERE AccountId IN :accId];
        // Account temId = [SELECT Id FROM Account WHERE Name = 'Temporary Account' LIMIT 1];
        // List<SObject> updateTemp = new List<SObject>();
        
        // for(Contact con : contId){
        //     con.AccountId = temId.Id;
        //     updateTemp.add(con);
        // }
        // for(Opportunity opp : oppId){
        //     opp.AccountId = temId.Id;
        //     updateTemp.add(opp);
        // }
        
        // Update updateTemp;
    }

    public static void sendRestoredAccountMail(List<Account> restoredAccounts){     //M11 - Homework14
        // List<Id> accids = new List<Id>();
        // for(Account acc : restoredAccounts){
        //     accids.add(acc.id);
        // }
        // List<Contact> contacts = [SELECT Id, Name, Email, AccountId, Account.Name 
        //                             FROM Contact WHERE AccountId IN : accids];
        // List<Messaging.SingleEmailMessage> messages = new List<Messaging.SingleEmailMessage>();
        // for(Contact cont : contacts){
        //     Messaging.SingleEmailMessage sme = new Messaging.SingleEmailMessage();
        //     sme.setSubject('Account Restored: '+cont.Account.Name);
        //     sme.setToAddresses(new List<String>{cont.email});
        //     sme.setPlainTextBody('Hello '+cont.Name+', Account ('+cont.AccountId+') Restored Successfully!');
        //     messages.add(sme);
        // }
        // Messaging.sendEmail(messages);

                                
            
                                    //I did this one
        /* 
    
        List<Messaging.SingleEmailMessage> singleMessage = new List<Messaging.SingleEmailMessage>();

        List<Account> accIds = Trigger.new;

        List<String> mailSend = new List<String>();

        List<Contact> mailCont = [SELECT Id, Email FROM Contact WHERE AccountId IN :accIds];

        for(Contact con : mailCont){
            mailSend.add(con.Email);
        }
        
        for(Account acc : Trigger.new){
            
            Messaging.SingleEmailMessage msm = new Messaging.SingleEmailMessage();
            msm.setToAddresses(mailSend);
            msm.setSubject(acc.Name + ' is restored');
            msm.setPlainTextBody('Hello ' + UserInfo.getName() + ' ' + acc.Name + ' has been restored. Id is: ' + UserInfo.getOrganizationId());
            singleMessage.add(msm);
        }
        Messaging.sendEmail(singleMessage);
        */
    }

    public static void cannotDeleteConAndOppy(Map<Id,Account> deleteAccount){
        List<Id> accId = new List<Id>();
        accId.addAll(deleteAccount.keySet());

        List<Contact> conId = [SELECT Id FROM Contact WHERE AccountId IN :accId];
        List<Opportunity> oppId = [SELECT Id FROM Opportunity WHERE AccountId IN :accId];
        if(conId.size() > 0 || oppId.size() > 0){
            Trigger.old.get(0).addError('Can not delete. Account is associated with Contact or Opportunity');
        }
    }

    public static void ifMatchBillingTrueShipPotsCodMatchBillPostCod(List<Account> newAccount){
        // for(Account acc : newAccount){
        //     if(acc.Match_Billing_Address__c == true){
        //         acc.ShippingPostalCode = acc.BillingPostalCode;
        //     }
        // }
    }
    public static void updateDescriptionForUpdates(List<Account> oldAccounts, List<Account> newAccounts){
        // for(Integer index=0; index < oldAccounts.size(); index++){
        //     String oldRating = oldAccounts[index].Rating;
        //     String newRating = newAccounts[index].Rating;
        //     String oldIndustry = oldAccounts[index].Industry;
        //     String newIndustry = newAccounts[index].Industry;
        //     String oldOwnership = oldAccounts[index].Ownership;
        //     String newOwnership = newAccounts[index].Ownership;
        //     if(newAccounts[index].Description == null){
        //         newAccounts[index].Description = '';
        //     }
        //     if(oldRating != newRating){
        //         if(oldRating == null){
        //             oldRating = 'Blank';
        //         }
        //         newAccounts[index].Description += ', Rating updated '+oldRating+' to '+newRating;
        //     }
        //     if(oldIndustry != newIndustry){
        //         if(oldIndustry == null){
        //             oldIndustry = 'Blank';
        //         }
        //         newAccounts[index].Description += ', Industry updated '+oldIndustry+' to '+newIndustry;
        //     }
        //     if(oldOwnership != newOwnership){
        //         if(oldOwnership == null){
        //             oldOwnership = 'Blank';
        //         }
        //         newAccounts[index].Description += ', Ownership updated '+oldOwnership+' to '+newOwnership;
        //     }
        // }
    }
}