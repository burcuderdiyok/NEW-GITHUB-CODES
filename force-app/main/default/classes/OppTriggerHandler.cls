public class OppTriggerHandler {
	public static void createOpp(List<Account> accList){
        List<Opportunity> oppList= new List<Opportunity>();
        for(Account acc:accList){
            if(acc.Active__c=='Yes'){
              oppList.add(new Opportunity(Name='Q6 Trigger', stageName='Prospecting', closeDate=Date.today(), AccountId=acc.Id));   
            }
               
        }
        if(oppList.size()>0){
            insert oppList;
        }
    }        
}