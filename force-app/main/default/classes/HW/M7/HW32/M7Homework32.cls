public class M7Homework32 {
    public static void show(){
        
        List<List<SObject>> objRes = [FIND 'Yoll' IN ALL FIELDS 
                                      RETURNING Employee__c(First_Name__c, Last_Name__c), Student__c(First_Name__c, Last_Name__c)];
        for(List<SObject> objr : objRes){
            for(SObject obj : objr){
                System.debug(obj);
            }
        }
    }
}