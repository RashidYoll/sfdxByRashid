public class M7Homework6 {
    public static void show(){
        
        SObject obj = new Student__c();
        obj.put('First_Name__c', 'Rashid');
        obj.put('Last_Name__c', 'Tanriverdiyev');
        obj.put('Age__c', 28);
        obj.put('Join_Date__c', Date.newInstance(2022, 09, 24));
        obj.put('Gender__c', 'Male');
        System.debug(obj);
        
        Student__c stu = (Student__c)obj;
        System.debug(stu);
    }
}