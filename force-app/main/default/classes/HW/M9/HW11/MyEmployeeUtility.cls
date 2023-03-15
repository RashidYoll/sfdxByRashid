public class MyEmployeeUtility {
    public class MyEmployeeUtilityException extends Exception{}
    
    String fullName;
    String country;
    Decimal salary;
    String departmentName;
    Employee__c emp;
    
    public MyEmployeeUtility(String fName, String lName){
        try{
            emp = [SELECT Id, First_Name__c, Last_Name__c, Salary__c, Country__c, Department__r.Name__c 
                  FROM Employee__c WHERE First_Name__c = :fName AND Last_Name__c = :lName LIMIT 1];
            country = emp.Country__c;
            fullName = emp.First_Name__c + ' '+ emp.Last_Name__c;
            salary = emp.Salary__c;
            departmentName = emp.Department__r.Name__c;
        }
        catch(Exception ex){
            throw new MyEmployeeUtilityException ('There is no like this Employee');
        }
    }
}