public with sharing class StudentUtility2 {
    public static void viewTheseFields(List<String> fields, String fieldName, Object value) {

        String s = 'SELECT Id';

        for(String field : fields){
            s += ', ' + field;
        }

        s += ' FROM Student__c' ;
        s += ' WHERE ' + fieldName + ' = :value';
        
        List<Student__c> students = Database.query(s);

        for(Student__c stu : students){
            for(String field : fields){
                System.debug(stu.get(field));
            }
            System.debug('=================');
        }
    }
}