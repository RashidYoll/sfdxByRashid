public class M7Homework20 {
    public static void show(){
		List<Student__c> students = new List<Student__c>();
        
        List<Classroom__c> classrooms = [SELECT Id FROM Classroom__c];
        Integer i = 6;
        for(Classroom__c cls : classrooms){
            Student__c stu = new Student__c();
            stu.First_Name__c = 'David';
            stu.Last_Name__c = 'Johnson';
            stu.Gender__c = 'Male';
            stu.Age__c = i;
            stu.Classroom__c = cls.Id;
            i++;
            students.add(stu);
        }
        INSERT students;
    }
}