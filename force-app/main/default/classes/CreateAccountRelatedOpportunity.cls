public class CreateAccountRelatedOpportunity {
    public void newOpp(string accName, List<Opportunity> multiOpp){
    	Account singleAcc=new Account();
        singleAcc.Name=accName;
        insert singleAcc;
        
        list<Opportunity> newMultiOpp=new List<Opportunity>();
        for(Opportunity singleOpp:multiOpp){
            if(string.isBlank(singleOpp.Id)){
               singleOpp.AccountId=singleAcc.Id; 
            }           
        }
		insert newMultiOpp;
    }      
}