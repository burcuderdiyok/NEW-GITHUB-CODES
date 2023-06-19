@isTest
public class CreateContactTest {
	@isTest
    public static void Test1(){
        CreateContact con=new CreateContact();
        con.newContact('New Contact FirstName','New Contact LastName' );
        
        Test.startTest();
        Contact testCon=[SELECT Id, firstName, lastName FROM Contact];
        Test.stopTest();
        
        System.assertEquals('New Contact FirstName',testCon.firstName);
        System.assertEquals('New Contact LastName',testCon.lastName);
        
    }
	@isTest
    public static void Test2(){
        CreateContact con=new CreateContact();
        List<string> conList=new List<string>();
        
        for(integer i=1; i<=50; i++){
            conList.add('NewContactList LastName: '+i);
        }
        
        Test.startTest();
        con.newContact(conList);
        Test.stopTest();
        List<Contact> multiTestCon=[SELECT Id, Name FROM Contact];
        
        
        integer result=multiTestCon.size();
        System.assertEquals(50,result);
        
    }
}