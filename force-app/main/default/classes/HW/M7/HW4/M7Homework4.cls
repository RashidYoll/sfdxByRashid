public class M7Homework4 {
    public static void show(){
        
        Student__c stu = new Student__c();
        
        stu.First_Name__c = 'Neymar';
        stu.Last_Name__c = 'JN';
        stu.Age__c = 23;
        stu.Join_Date__c = Date.newInstance(2018, 07, 23);
        stu.Gender__c = 'Male';
        
        INSERT stu;        
    }
}