@isTest
public class AccountCalculatorTest {
	@isTest
    private static void countContactsTest(){
    List<account> accList=new List<Account>(); 
        for(Integer i=0; i<15; i++){
            accList.add(new Account(name= 'Test '+i));
        }
        insert accList;
        
        List<Contact> conList=new List<Contact>();
        List<id> accIds=new List<Id>();
        for(Account acc:accList){
            conList.add(new Contact( FirstName='test', lastName='Contact', AccountId=acc.Id));
            accIds.add(acc.id);
        }
        insert conList;
        
        Test.startTest();
        AccountCalculator.countContacts(accIds);
        Test.stopTest();
        List<Account> accs=[select id, Number_Of_Contacts__c from account];
        system.assertEquals(1, accs[0].Number_Of_Contacts__c, 'contacts are not counted successfully');
    }
}