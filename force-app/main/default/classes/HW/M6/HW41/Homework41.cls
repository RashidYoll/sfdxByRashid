public with sharing class Homework41 {
    public static void show() {

        List<Student__c> students = [SELECT First_Name__c, Last_Name__c, 
                                    (SELECT Exam_Name__c, Date_Of_Exam__c, Marks_Obtained__c, Total_Marks__c 
                                    FROM Exam_Details__r) 
                                    FROM Student__c];

        for(Student__c stu : students){
            System.debug('Student Name: ' + stu.First_Name__c + ' ' + stu.Last_Name__c);
            System.debug('--------------------------');
            for(Exam_Detail__c exd : stu.Exam_Details__r){
                System.debug('Exam Name: ' + exd.Exam_Name__c);
                System.debug('Date of Exam: ' + exd.Date_Of_Exam__c);
                System.debug('Marks: ' + exd.Marks_Obtained__c + '/' + exd.Total_Marks__c);
                System.debug('--------------------------'); 
            }
            System.debug('================================');
        }
    }
}