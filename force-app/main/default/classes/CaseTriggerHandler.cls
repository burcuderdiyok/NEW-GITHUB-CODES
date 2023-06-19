public class CaseTriggerHandler {
	public static void createCase(List<Case> caseList){
        List<Account> accList= new List<Account>();
        for(Case cs:caseList){
            accList.add(new Account (name='Q7 Trigger', Latest_Case_Number__c=cs.CaseNumber));
            
        }  
        insert accList;
}
}