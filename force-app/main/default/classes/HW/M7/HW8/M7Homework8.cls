public class M7Homework8 {
    public static void show(){
        List<SObject> obj = [SELECT First_Name__c, Last_Name__c, Age__c 
                             FROM Student__c WHERE First_Name__c = 'Harry'];
        for(SObject sobj : obj){
            Student__c stu = (Student__c)sobj;
            if(stu.First_Name__c == 'Harry' && stu.Last_Name__c == 'Potter'){
                stu.Age__c = 12;
            }
        }
        System.debug(obj);
    }
}