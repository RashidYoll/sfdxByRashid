public with sharing class Homework43 {
    public static void show() {

        String gen = 'Female';

        List<Student__c> students = [SELECT First_Name__c, Last_Name__c, Age__c, Join_Date__c 
                                        FROM Student__c WHERE Gender__c = :gen];
        for(Student__c stu : students){
            System.debug('Student Name: ' + stu.First_Name__c + ' ' + stu.Last_Name__c);
            System.debug('Student Age: ' + stu.Age__c);
            System.debug('Joining Date: ' + stu.Join_Date__c);
            System.debug('===============================');
        }                                        
    }
}