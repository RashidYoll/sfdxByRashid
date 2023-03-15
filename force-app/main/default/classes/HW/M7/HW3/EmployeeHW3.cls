public class EmployeeHW3 {
    public static void show(){
        
        Employee__c emp = new Employee__c();
        
        emp.First_Name__c = 'Rooney';
        emp.Last_Name__c = 'Wayne';
        emp.Country__c = 'ENG';
        emp.Join_Date__c = Date.today();
        emp.Email__c = 'rooney@gmail.com';
        emp.Salary__c = 1200000;
        
        System.debug(emp);
        INSERT emp;
    }
}