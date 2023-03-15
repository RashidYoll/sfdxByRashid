public with sharing class ExamDetail_HW2 {
    public static void show() {

        List<Exam_Detail__c> examDetails = [SELECT Exam_Name__c, Marks_Obtained__c, Date_of_Exam__c 
                                        FROM Exam_Detail__c LIMIT 20];
        
        for(Exam_Detail__c exm : examDetails){
            System.debug('Exam Name: ' + exm.Exam_Name__c);
            System.debug('Marks Obtained: ' + exm.Marks_Obtained__c);
            System.debug('Date of Exam: ' + exm.Date_of_Exam__c);
            System.debug('==========================');
        }
    }
}