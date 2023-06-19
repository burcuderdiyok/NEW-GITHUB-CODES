public class Test {
    public static void newAcc(string acName){
        list<Account> accList=[select id, name from account where name=:acName];
        for( Account ac:accList){
            if (accList.size()>0){
               ac.Name='updated'+acName;
             update accList;   
            }
            else{
                Account accNew=new Account();
                accNew.Name=acName;
                insert accNew;
            }
            
        
        
    }
    }       
}