public class M7Homework10 {
    public static void show(){
        Student__c stu = new Student__c();
        stu.First_Name__c = 'John';
        stu.Last_Name__c = 'Wick';
        Date currentDate = Date.today();
        stu.Join_Date__c = Date.newInstance(currentDate.year(), currentDate.month(), 1);
        Id cls = [SELECT Id FROM Classroom__c WHERE Standard__c = '5' LIMIT 1].Id;
        stu.Classroom__c = cls;
        INSERT stu;
        System.debug(stu.Id);
    }
}