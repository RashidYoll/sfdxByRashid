public class M7Homework23 {
    public static void show(){
        
        List<Employee__c> employees = [SELECT Email__c, Country__c FROM Employee__c WHERE First_Name__c = 'Emp'];
        for(Employee__c emp : employees){
            emp.Email__c = 'emps@yoll.io';
            emp.Country__c = 'MEX';
        }
        List<Database.saveResult> results = Database.update(employees, false);
        for(Database.saveResult err : results){
            if(err.isSuccess()){
                System.debug('Successfully updated');
            }
            else{
                System.debug('Error occured');
            }
        }
    }
}