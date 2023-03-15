public with sharing class StudentUtility {
    public static void viewTheseFilds(List<String> fields) {

        String s = 'SELECT Id';

        for(String field : fields){
            s += ', ' + field;
        }

        s += ' FROM Student__c';

        List<Student__c> students = Database.query(s);

        for(Student__c stu : students){
            for(String field : fields){
                System.debug(stu.get(field));
            }
            System.debug('=============');
        }
    }
}