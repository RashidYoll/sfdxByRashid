public class OpportunityUtility {
    public static Opportunity accept1(Id accId){
        if(accId != null){
            Opportunity opp = new Opportunity();
            opp.Name = 'Opportunity 1';
            opp.AccountId = accId;
            opp.CloseDate = date.today();
            opp.StageName = 'Needs Analysis';
            INSERT opp;
            return opp;
        }
        else{
            return null;
        }
        
    }
    public static List<Opportunity> accept2(Id accId){
		List<Opportunity> opps = new List <Opportunity>();
        if(accId != null){
            
            for(Integer a = 1; a <= 10; a++){
                Opportunity opp = new Opportunity();
                opp.Name = 'Opportunity ' + a;
                opp.AccountId = accId;
                opp.CloseDate = date.today();
                opp.StageName = 'Prospecting';
                opps.add(opp);
            }
            INSERT opps;
            return opps;
        }
        else{
            return opps;
        }
    }
    public static Opportunity accept3(Id oppId, String StageName){
        List <Opportunity> opps = [SELECT Id, StageName FROM Opportunity WHERE Id = :oppId];
        if(opps.size() > 0){
            Opportunity opp = opps[0];
            opp.StageName = StageName;
            UPDATE opp;
            return opp;
        }
        else{
            return null;
        }
    }
    public static List<Opportunity> accept4(Map<Id, String> oppsMap){
        if(oppsMap != null){
            List<Id> ids = new List<Id>();
            Set<Id> setIds = oppsMap.keySet();
            ids.addAll(setIds);
            List<Opportunity> opps = [SELECT Id, StageName FROM Opportunity WHERE Id IN :ids];
            if(opps.size() > 0){
                for(Opportunity opp : opps){
                    opp.StageName = oppsMap.get(opp.Id);
                }
                UPDATE opps;
            }
            return opps;
        }
        else{
            return null;
        }
    }
    public static Opportunity accept5(String StageName){
        If(StageName != null){
            Opportunity opp = [SELECT Id, StageName FROM Opportunity WHERE StageName = :StageName];
            return opp;
        }
        else{
            return null;
        }
    }
    public static List<Opportunity> accept6(List<String> StageNames){
        if(StageNames != null){
	        List<Opportunity> opps = [SELECT Id, StageName FROM Opportunity WHERE StageName IN : stageNames];
            return opps;
        }
        else{
            return null;
        }
    }
}