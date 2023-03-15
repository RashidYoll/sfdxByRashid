public class M7Homework21 {
    public static void show(){
        List<Department__c> departments = new List<Department__c>{
                                                        new Department__c(Name__c = 'Sales', Short_Code__c = 'SA'),
                                                        new Department__c(Name__c = 'Service', Short_Code__c = 'SE')
        												};
		INSERT departments;
        
        Id dep1 = [SELECT Id FROM Department__c WHERE Name__c = 'Sales' LIMIT 1].Id;
        Id dep2 = [SELECT Id FROM Department__c WHERE Name__c = 'Service' LIMIT 1].Id;
        
        List<Employee__c> emp = new List<Employee__c>{
            					new Employee__c(First_Name__c = 'Employee', Last_Name__c = '1', Department__c = dep1),
                                new Employee__c(First_Name__c = 'Employee', Last_Name__c = '2', Department__c = dep1),
                                new Employee__c(First_Name__c = 'Employee', Last_Name__c = '3', Department__c = dep1),
            					new Employee__c(First_Name__c = 'Employee', Last_Name__c = '4', Department__c = dep2),
                                new Employee__c(First_Name__c = 'Employee', Last_Name__c = '5', Department__c = dep2),
                                new Employee__c(First_Name__c = 'Employee', Last_Name__c = '6', Department__c = dep2)
                                };
		INSERT emp; 
        
        Id hed1 = [SELECT Id FROM Employee__c WHERE Last_Name__c = '2'].Id;
        Id hed2 = [SELECT Id FROM Employee__c WHERE Last_Name__c = '4'].Id;
        
        List<Department__c> depList = [SELECT Name__c FROM Department__c WHERE Head_Of_Department__c = null];
        for(Department__c depHed : depList){
            if(depHed.Name__c == 'Sales'){
                depHed.Head_of_Department__c = hed1;
            }
            if(depHed.Name__c == 'Service'){
                depHed.Head_of_Department__c = hed2;
            }
        }
        UPDATE depList;
    }
}