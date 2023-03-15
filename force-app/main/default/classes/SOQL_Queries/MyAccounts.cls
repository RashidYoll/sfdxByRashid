public with sharing class MyAccounts {
    public static void shwo() {

        List<Contact> mycontacts = [SELECT Name, Account.Name, Account.Type FROM Contact];
        
        

    }
}
