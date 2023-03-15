@IsTest
class OpportunityUtilityTest {
	@IsTest
    static void accept1Test1(){
        Account acc = new Account(Name = 'ABC');
        INSERT acc;
        Test.startTest();
        Opportunity opp1 = OpportunityUtility.accept1(acc.Id);
        Test.stopTest();
        System.assertEquals(opp1.AccountId, acc.Id, 'Wrong');
    }
    @IsTest
    static void accept1Test2(){
        Test.startTest();
        Opportunity opp2 = OpportunityUtility.accept1(null);
        Test.stopTest();
        System.assertEquals(null, opp2, 'Wrong');
    }
    @IsTest
    static void accept2Test1(){
        Account acc = new Account(Name = 'ABC');
        INSERT acc;
        Test.startTest();
        List<Opportunity> opps = OpportunityUtility.accept2(acc.Id);
        Test.stopTest();
        System.assertEquals(10, opps.size(), 'Wrong');
        for(Opportunity opp : opps){
        	System.assertEquals(opp.AccountId, acc.Id, 'Wrong');    
        }
    }
    @IsTest
    static void accept2Test2(){
        Test.startTest();
        List<Opportunity> opps = OpportunityUtility.accept2(null);
        Test.stopTest();
        System.assertEquals(0, opps.size(), 'Wrong');
    }
    @IsTest
    static void accept3Test1(){
        Opportunity opportunity = new Opportunity(Name = 'OppTest3', StageName = 'Prospecting', CloseDate = date.today()+20);
        INSERT opportunity;
        Test.startTest();
        Opportunity opp = OpportunityUtility.accept3(opportunity.Id, 'Closed Won');
        Test.stopTest();
        System.assertEquals('Closed Won', opp.StageName, 'Stage Name not update!');
        System.assertEquals(opportunity.Id, opp.Id, 'Method not updating correct opportunity');
    }
    @IsTest
    static void accept3Test2(){
        Test.startTest();
        Opportunity opp = OpportunityUtility.accept3('006Dn000005urRkIAI', 'Closed Won');
        Test.stopTest();
        System.assertEquals(null, opp, 'Not returning null for wrong ids');
    }
    @IsTest
    static void accept4Test1(){
        Opportunity opp1 = new Opportunity(Name = 'OppTest1', StageName = 'Closed Won', CloseDate = date.today()+10);
        Opportunity opp2 = new Opportunity(Name = 'OppTest2', StageName = 'Prospecting', CloseDate = date.today()+20);
        List<Opportunity> opps = new List<Opportunity>{opp1, opp2};
		INSERT opps;
        Map<Id, String> oppsMap = new Map<Id, String>{opp1.Id => 'Needs Analysis', opp2.Id => 'Needs Analysis'};
		Test.startTest();
		List<Opportunity> oppies = OpportunityUtility.accept4(oppsMap);
        Test.stopTest();
        System.assertEquals(2, oppies.size(), 'Number of Opportunities updated not same!');
        for(Opportunity opp : oppies){
            System.assert(opp.Id == opp1.Id || opp.Id == opp2.Id, 'Opps Id not correct!');
            System.assertEquals('Needs Analysis' , opp.StageName, 'Stage Name not update!');
        }
    }
    @IsTest
    static void accept4Test2(){
        //Map<Id, String> oppsMap = new Map<Id, String>{'006Dn000005urNCIAY' => 'Closed Won', '006Dn000005urRlIAI' => 'Closed Lost'};
        Test.startTest();
        List<Opportunity> opps = OpportunityUtility.accept4(null);
        Test.stopTest();
        System.assertEquals(null, opps);
    }
    @IsTest
    static void accept5Test1(){
        Opportunity opp1 = new Opportunity(Name = 'OppTest1', StageName = 'Closed Won', CloseDate = date.today()+10);
        INSERT opp1;
        Test.startTest();
        Opportunity opp = OpportunityUtility.accept5('Closed Won');
        Test.stopTest();
        System.assertEquals(opp1.stageName, opp.StageName, 'Wrong');
    }
    @IsTest
    static void accept5Test2(){
        Test.startTest();
        Opportunity opp = OpportunityUtility.accept5(null);
        Test.stopTest();
        System.assertEquals(null, opp, 'Wromg');
    }
    @IsTest
    static void accept6Test1(){
        Opportunity opp1 = new Opportunity(Name = 'OppTest1', StageName = 'Closed Won', CloseDate = date.today()+10);
        Opportunity opp2 = new Opportunity(Name = 'OppTest2', StageName = 'Prospecting', CloseDate = date.today()+20);
        List<String> listOpps= new List<String>();
        listOpps.add(opp1.StageName);
        listOpps.add(opp2.StageName);
        List<Opportunity> oppies = new List<Opportunity>{opp1, opp2};
		INSERT oppies;
        Test.startTest();
        List<Opportunity> opps = OpportunityUtility.accept6(listOpps);
        Test.stopTest();
        System.assertEquals(2, opps.size(), 'Wrong');
    }
    @IsTest
    static void accept6Test2(){
        Test.startTest();
        List<Opportunity> opps = OpportunityUtility.accept6(null);
        Test.stopTest();
        System.assertEquals(null, opps, 'Wrong');
    }
}