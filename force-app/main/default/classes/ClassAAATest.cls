@isTest
public class ClassAAATest {
	@isTest
    public static void Test1()
    {      
        ClassAAA.create100Accounts();
        List<Account> newList=[select name from account];

            for(integer i=0;i<5;i++)
            {
                system.assertEquals('New Ac '+i, newList[i].Name);
            }
            system.assertEquals(5, newList.size());

    }
}