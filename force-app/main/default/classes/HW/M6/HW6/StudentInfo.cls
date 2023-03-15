public with sharing class StudentInfo {
    public static void show() {
         
        List<Student__c> mystudent = [SELECT First_Name__c, Last_Name__c, Age__c, Join_Date__c FROM Student__c];

        for(Student__c stu : mystudent){
            System.debug('Student Name: ' + stu.First_Name__c + ' ' + stu.Last_Name__c);
            System.debug('Student Age: ' + stu.Age__c);
            System.debug('Joining Date: ' + stu.Join_Date__c);
            System.debug('==============================');
        }

    }
}

// List<Account> myaccounts = [SELECT Name, Type, Phone FROM Account];

//         for(Account acc : myaccounts){
//             System.debug('Account Name : '+acc.Name);
//             System.debug('Account Type : '+acc.Type);
//             System.debug('Phone Number : '+acc.Phone);
//             System.debug('==============================');
//         }