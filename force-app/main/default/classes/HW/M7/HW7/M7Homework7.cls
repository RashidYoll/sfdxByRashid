public class M7Homework7 {
    public static void show(){
        Employee__c emp = new Employee__c();
        emp.First_Name__c = 'Dwayne';
        emp.Last_Name__c = 'Johnson';
        emp.Join_Date__c = Date.today();
        emp.Email__c = 'dwayne@johnson.com';
//        INSERT emp;
        
        List<SObject> obj = [SELECT First_Name__c, Last_Name__c 
                             FROM Employee__c WHERE Email__c = 'dwayne@johnson.com'];
        for(SObject sobj : obj){
            Employee__c emp2 = (Employee__c)sobj;
            if(emp2.First_Name__c == 'Dwayne' && emp2.Last_Name__c == 'Johnson'){
                emp2.First_Name__c = 'The';
                emp2.Last_Name__c = 'Rock';
            }
        }
        System.debug(obj);
    }
}