@istest
public class reviewTest2 {
	@istest
    public static void Test1(){
        reviewTest tst=new reviewTest();
            tst.create('derdiyok');
            
            contact con=[select id, lastname from contact];
            system.assertEquals('derdiyok', con.LastName);
        }
    @istest
    public static void Test2(){
       reviewTest tst=new reviewTest();
        List<string> str= new List<string>();
        
        for( integer i=1; i<=100;i++){
            str.add('NewContactList LastName: '+i);
        } 
        tst.createList(str);
        List<contact> multiTestCon=[select id, lastname from contact];
        system.assertEquals(50, multiTestCon.size());
        
    }
}