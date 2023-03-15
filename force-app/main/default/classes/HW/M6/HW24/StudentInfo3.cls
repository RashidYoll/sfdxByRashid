public with sharing class StudentInfo3 {
    public static void show() {

        List<Student__c> students = [SELECT First_Name__c, Last_Name__c, Join_Date__c FROM Student__c LIMIT 5];

        for(Student__c stu : students){
            System.debug('Student Name: ' + stu.First_Name__c + ' ' + stu.Last_Name__c);
            System.debug('Joining Date: ' + stu.Join_Date__c);
            System.debug('-----------------------------------');
        }
    }
}