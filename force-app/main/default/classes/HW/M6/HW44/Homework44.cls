public with sharing class Homework44 {
    public static void show() {

        Integer age = 12;

        List<Student__c> students = [SELECT First_Name__c, Last_Name__c, Age__c, Classroom__r.Standard__c 
                                                FROM Student__c WHERE Age__c > :age];
        for(Student__c stu : students){
            System.debug('Student Name: ' + stu.First_Name__c + ' ' + stu.Last_Name__c);
            System.debug('Student Age: ' + stu.Age__c);
            System.debug('Student Standard: ' + stu.Classroom__r.Standard__c);
            System.debug('===============================');
        }    
    }
}