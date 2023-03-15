public class M7Homework13 {
    public static void show(){

        Employee__c emp = new Employee__c();

        emp.First_Name__c = 'Peter';
        emp.Last_Name__c = 'Parker';
        emp.Salary__c = 235000;
        INSERT emp;
        
        Employee__c emp1 = new Employee__c();
        emp1.First_Name__c = 'David';
        emp1.Last_Name__c = 'Massey';
        emp1.Salary__c = 65000;
        
        emp.Email__c = 'peter@parker.com';
        
        List<Employee__c> employees = new List<Employee__c>();
        employees.add(emp);
        employees.add(emp1);

		UPSERT employees;        
    }
}