public class M7Homework15 {
    public static void show(){
        
        Employee__c emp = [SELECT Id From Employee__c 
                           WHERE First_Name__c = 'David' AND Last_Name__c = 'Massey' LIMIT 1];
        DELETE emp;
    }
}