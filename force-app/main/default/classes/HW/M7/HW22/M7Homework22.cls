public class M7Homework22 {
    public static void show(){
        
        List<Employee__c> employees = new List<Employee__c>{
            new Employee__c(First_Name__c = 'Emp', Last_Name__c = '1', Salary__c = 12000, Join_date__c = Date.today(), Department__c = 'a01Dn000009G0YUIA0'),
            new Employee__c(First_Name__c = 'Emp', Last_Name__c = '2', Salary__c = 23000, Join_date__c = Date.today(), Department__c = 'a01Dn000009G0YUIA0'),
            new Employee__c(First_Name__c = 'Emp', Last_Name__c = '3', Salary__c = 34000, Join_date__c = Date.today(), Department__c = 'a01Dn000009G0YUIA0'),
            new Employee__c(First_Name__c = 'Emp', Last_Name__c = '4', Salary__c = 45000, Join_date__c = Date.today(), Department__c = 'a01Dn000009G0YUIA0'),
            new Employee__c(First_Name__c = 'Emp', Last_Name__c = '5', Salary__c = 56000, Join_date__c = Date.today(), Department__c = 'a01Dn000009G0YUIA0')    
        	};
		List<Database.SaveResult> results = Database.insert(employees, false);
        for(Database.SaveResult err : results){
            if(err.isSuccess()){
                System.debug('Successfully inserted');
            }
            else{
                System.debug('Error occured');
            }
        }
    }
}