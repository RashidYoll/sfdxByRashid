public with sharing class SObjectUtility {
    public static void viewTheseFields(List<String> fields, String objectName, 
                                        String conditionFieldName, Object conditionalValue) {
            
        String s = 'SELECT Id';

        for(String field : fields){
            s += ', ' + field;
        }

        s += ' FROM ' + objectName;
        s += ' WHERE ' + conditionFieldName + ' = :conditionalValue';

        List<SObject> records = Database.query(s);

        for(SObject rec : records){
            for(String field : fields){
                System.debug(rec.get(field));
            }
            System.debug('=================');
        }
    }
}