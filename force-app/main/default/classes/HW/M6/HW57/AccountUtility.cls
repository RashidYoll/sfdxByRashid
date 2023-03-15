public with sharing class AccountUtility {
    public static void viewAnnualRevenue() {
       
        String act = 'SELECT Name, AnnualRevenue FROM Account';
       
        List<Account> accounts = Database.query(act);

        for(Account acnt : accounts){
            System.debug('Name: ' + acnt.Name);
            System.debug('Annual Revenue: ' + acnt.AnnualRevenue);
            System.debug('================');
        }
    }
}