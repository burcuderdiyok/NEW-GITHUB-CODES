public class AccountCalculator {
    @future
    public static void countContacts(List<Id> accIds){
        List<Account> accList=[select id, (select id from contacts) from account where id IN: accIds];
        
        for(Account acc:accList){
            acc.Number_Of_Contacts__c=acc.Contacts.size();
        }
        if(!accList.isEmpty()){
            update accList;
        }
    }

}