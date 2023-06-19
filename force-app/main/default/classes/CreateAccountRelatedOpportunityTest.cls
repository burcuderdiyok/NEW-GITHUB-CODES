@istest
public class CreateAccountRelatedOpportunityTest {
	@istest
    public static void Test1(){        
        CreateAccountRelatedOpportunity crt=new CreateAccountRelatedOpportunity();
        list<Opportunity> testOppList=new List<Opportunity>();
		
        for(integer i=1; i<=50;i++){
            Opportunity testOpp=new Opportunity();
            testOpp.Name='Clarusway '+i;
            testOpp.stageName='Closed Won';
            testOpp.closeDate=system.today()+30;
            testOppList.add(testOpp);
        }
        
        Test.startTest();
        crt.newOpp('Triforcia LLC',testOppList);
        Test.stopTest();
        
        Account newAccount=[SELECT Id, Name FROM Account];
        list<Opportunity> newOppList=[SELECT Id, Name, StageName, CloseDate,AccountId FROM Opportunity];
        
        FOR(Opportunity opp:newOppList){
            System.assertEquals('Triforcia LLC',newAccount.Name);
        	System.assertEquals(opp.AccountId,newAccount.Id);
            System.assertEquals('Closed Won', opp.stageName);
            System.assertEquals(system.today()+30, opp.CloseDate);            
        }
        FOR(Opportunity opp:newOppList){
        	For(integer i=1; i<=50;i++){
            System.assertEquals('Clarusway '+i, opp.Name);
        	}
        }
    }
}