public class M7Homework14 {
    public static void show(){
        Id cls = [SELECT Id FROM Classroom__c WHERE Standard__c = '6' LIMIT 1].Id;
        
        Student__c stu = new Student__c();
        stu.First_Name__c = 'Emma';
        stu.Last_Name__c = 'Watson';
        stu.Age__c = 11;
        stu.Classroom__c = cls;
        INSERT stu;
        
        stu.Gender__c = 'Female';
        
        Id cls1 = [SELECT Id FROM Classroom__c WHERE Standard__c = '8' LIMIT 1].Id;
        
        Student__c stu1 = new Student__c();
        stu1.First_Name__c = 'Angelina';
        stu1.Last_Name__c = 'Jolie';
        stu1.Age__c = 13;
        stu1.Classroom__c = cls1;
        
		List<Student__c> studentsList = new List<Student__c>();
		studentsList.add(stu);
		studentsList.add(stu1);

		UPSERT studentsList;        
    }
}