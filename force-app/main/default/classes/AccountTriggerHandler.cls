public class AccountTriggerHandler {
    public static void createCon(List<Account> accList){
        List<Contact> conList= new List<Contact>();
        for(Account acc:accList){
             conList.add(new Contact(LastName='Q5 Trigger', AccountId=acc.Id));   
        }
        if(ConList.size()>0){
            insert conList;
        }
    }
}