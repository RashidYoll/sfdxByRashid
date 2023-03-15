public with sharing class EmployeeUtility {
    public static void viewTheseFields(List<String> fields) {

        String e = 'SELECT Id';

        for(String field : fields){
            e += ', ' + field;
        }

        e += ' FROM Employee__c';

        List<Employee__c> employees = Database.query(e);
        
        for(Employee__c emp : employees){
            for(String field : fields){
                System.debug(emp.get(field));
            }
            System.debug('==================');
        }
    }
}
// EmployeeUtility.viewTheseFields(new List<String> {'First_Name__c', 'Last_Name__c'});