public class apexCodes {
	public static void sumListElements()
    {
        List<Integer> List1 = new List<Integer>{1,2,3};
		List<Integer> List2 = new List<Integer>{1,2,3};
        List<Integer> sumList = new List<Integer>();    
        for(integer i=0; i<List1.size(); i++)
        {
            integer newEl = List1[i]+List2[i];
            sumList.add(newEl);
        }
        system.debug(sumList);
    }
    public static void convertListSet()
    {
        List<String> al = new  List<String>{'A','B','C','A','C','A'};
        Set<string> s=new Set<string>(al);
        system.debug(s);
    }
    
    public static void queryAcc(List<Case> csList)
    {
        List<Account> accList = [SELECT Id, (SELECT Id FROM Cases) FROM Account];
        system.debug(accList.size());
        
    }
    public static void mapListSet()
    {
       Map<Account,Id> accMap=new Map<Account,Id>();
       List<Account> accList=[select id, name from account];
       for(Account acc:accList)
       {
           accMap.put(acc,acc.Id);
       }
       system.debug(accMap.keySet());
       system.debug(accMap.values());
        
    }
    public static void splitFullName(string fullName)
    {
        string fName='';
        string lName;
        List<string> sList=fullName.split(' ');
        lName=sList[sList.size()-1];
        for(integer i=0; i<sList.size()-1;i++)
        {
          fName+= sList[i]+' '; 
        }
        
        system.debug(fName);
        system.debug(lName);
    }
    
}