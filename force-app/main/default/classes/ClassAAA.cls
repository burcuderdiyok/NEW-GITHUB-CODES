public class ClassAAA {
	public static void create100Accounts(){
       
       List<Account> acList = new List<Account>();
        
        for(Integer i=0; i<5; i++){
            Account ac = new Account();
            ac.Name = 'New Ac '+i;
            acList.add(ac);
        }
        insert acList;
    }
}