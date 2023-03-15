public with sharing class Homework1 {
    public static void showAccount() {

        List<Account> accounts = [SELECT Name, Type, Phone FROM Account LIMIT 10];

        for(Account act : accounts){
            System.debug('Account Name : ' + act.Name);
            System.debug('Account Type : ' + act.Type);
            System.debug('Phone : ' + act.Phone);
            System.debug('============================');
        }
    }
}