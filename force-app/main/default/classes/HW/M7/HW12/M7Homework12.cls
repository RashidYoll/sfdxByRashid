public class M7Homework12 {
    public static void show(){
        Student__c stu = [SELECT Gender__c, Age__c FROM Student__c 
                          WHERE First_Name__c = 'John' AND Last_Name__c = 'Wick' LIMIT 1];
        stu.Gender__c = 'Male';
        stu.Age__c = 10;
        UPDATE stu;
    }
}