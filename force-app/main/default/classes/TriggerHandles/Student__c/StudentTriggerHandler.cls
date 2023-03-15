public with sharing class StudentTriggerHandler {
    public static void checkIfHaveExamRecord(Map<Id,Student__c> oldStudent){
        List<Id> examIds = new List<Id>();

        examIds.addAll(oldStudent.keyset());

        List<Exam_Detail__c> exams = [SELECT Id FROM Exam_Detail__c WHERE Student__c IN :examIds];
        if(exams.size() > 0){
            Trigger.old.get(0).addError('Can\'t delete Student which related to any Exam Detail!');
        }
    }
}