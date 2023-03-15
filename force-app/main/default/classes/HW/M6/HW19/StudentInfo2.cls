public with sharing class StudentInfo2 {
    public static void show() {

        List<Student__c> students = [SELECT First_Name__C, Last_Name__c, Age__c, Gender__c FROM Student__c ORDER BY Age__c DESC];

        for(Student__c stu : students){
            System.debug('Student Name: ' + stu.First_Name__C + ' ' + stu.Last_Name__c);
            System.debug('Student Age: ' + stu.Age__c);
            System.debug('Gender: ' + stu.Gender__c);
            System.debug('-------------------------------------');
        }

    }
}