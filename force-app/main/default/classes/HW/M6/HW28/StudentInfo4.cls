public with sharing class StudentInfo4 {
    public static void show() {

        List<Student__c> students = [SELECT First_Name__c, Last_Name__c, Age__c 
                                      FROM Student__c 
                                      ORDER BY Age__c DESC LIMIT 1 OFFSET 1];

        for(Student__c stu : students){
            System.debug('Student Name: ' + stu.First_Name__c + ' ' + stu.Last_Name__c);
            System.debug('Age: ' + stu.Age__c);
        }                                      


    }
}