public class M7Homework18 {
	public static void show(){
        Classroom__c cls = [SELECT Id FROM Classroom__c WHERE Standard__c = '11' LIMIT 1];
        
        Student__c stu1 = new Student__c();
        stu1.First_Name__c = 'Gal';
        stu1.Last_Name__c = 'Gadot';
        stu1.Classroom__c = cls.id;
        INSERT stu1;
        
        Student__c stu2 = [SELECT Id FROM Student__c 
                            WHERE First_Name__c = 'Gal' AND Last_Name__c = 'Gadot' LIMIT 1];
        DELETE stu2;
        
        List<Student__c> stu3 = [SELECT Id FROM Student__c 
                                  WHERE First_Name__c = 'Gal' AND Last_Name__c = 'Gadot' ALL ROWS];
        UNDELETE stu3;
    }
}