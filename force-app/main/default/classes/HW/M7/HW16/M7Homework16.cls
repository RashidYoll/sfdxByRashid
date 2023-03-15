public class M7Homework16 {
	public static void show(){
        
        Student__c stu = [SELECT Id From Student__c 
                           WHERE First_Name__c = 'Angelina' AND Last_Name__c = 'Jolie' LIMIT 1];
        DELETE stu;
    }
}