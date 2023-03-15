public with sharing class StudentInfo5 {
    public static void show() {

        List<Student__c> students = [SELECT First_Name__c, Last_Name__c, Gender__c 
                                    FROM Student__c WHERE Join_Date__c = TODAY];

        for(Student__c stu : students){
            System.debug('Student Name: ' + stu.First_Name__c + ' ' + stu.Last_Name__c);
            System.debug('Gender: ' + stu.Gender__c);
            System.debug('--------------------------');
        }
    }
}