public class CreateApexCodes {
	public static void apex1()
    {
        Lead ld=new Lead( lastName='seren22', company='SF');
        insert ld;
        Group grp = new Group();
		grp.name='Business Man';
        insert grp;
    }
    public static string apex2(string usName)
    {
        List<user> usList=[select id from user];
        string message='';
        for(user u:usList)
        {
            if(u.Username==usName)
            {
                message='this user is already exists';
                break;
            }else
            {
                message='this user is not already exists';
            }
        }
        return message;
    }
    public static void apex3()
    {
        Contact con=new contact(firstName='Thomas', lastName='Miller', Email='thomas56@gmail.com');
        insert con;
        List<Account> accList=[select id, name from account where name='Tom Wood Toyota' limit 1];
        if(accList.size()==0)
        {
            Account ac=new Account(name='Tom Wood Toyota');
            insert ac;
            con.AccountId=ac.Id;
        }else
        {
            con.AccountId=accList[0].Id;
        }
        
        /*for(Account acc:accList)
        {
            Contact con2=[select id from contact where firstName='Thomas'and lastName='Miller'and Email='thomas56@gmail.com' limit 1];
            if(acc.Name=='Tom Wood Toyota')
           {
               acc.Id=con2.AccountId;
           }else
           {
               Account ac=new Account(name='Tom Wood Toyota', id=con2.AccountId);
           }
        }*/
    }
    public static void apex4()
    {
        List<Contact> conList=[select id from contact];
        for(Contact con:conList)
        {
            if(con.MailingAddress!=null)
            {
                con.OtherCity=con.MailingCity;
            }
        }
        update conList;
    }
    public static void apex5()
    {
        List<Account> accList=[select id,( select id, firstName, lastName from users where firstName='John'and lastName='Smith') from account  ];
        if(accList.size()!=0)
        {
            for(Account acc:accList)
            {
                acc.OwnerId='Burcu';
            }
            update accList;
        }
        List<Account> accList2=[select id, OwnerId from account where createdDate=Today];
        User u=[select id from user where firstName='John'and lastName='Smith' limit 1 ];
        for(Account acc:accList2)
        {
            acc.OwnerId=u.Id;
        }
    }
    public static void apex6()
    {
       List<Account> accList=[select id, Number_Of_Contacts__c , (select id from contacts) from account where Id IN (select AccountId from Contact)];
        for(Account acc:accList)
        {
            acc.Number_Of_Contacts__c=acc.Contacts.size();         
        }
        update accList;
    }
    public static void apex7()
    {
        Profile prf=[select Id from profile where name='Identity User' limit 1];
        
        User newUser = new User ();

		newUser.FirstName='Will';
		newUser.LastName='Smith';
		newUser.Alias='wills';
		newUser.Email='willsmith99@vmail.com';
		newUser.username='willsmith99@vmail.com';
		newUser.TimeZoneSidKey='America/Lima';
		newUser.LocaleSidKey='en_US';
		newUser.EmailEncodingKey='UTF-8';
		newUser.LanguageLocaleKey='en_US';
		newUser.ProfileId=prf.Id;
        
        Account acc=new Account(Name='Blue Moon Hotel');
        acc.Id=newUser.AccountId;
        
        Contact con=new contact(firstName='Will', lastName='Smith', AccountId=acc.Id);
        con.Id=newUser.ContactId;
        
        Task ts=new Task(Subject='New Task Has been Added', Status='In Progress', Priority='High',
                         ActivityDate=System.today()+15, OwnerId=newUser.Id, whatId=acc.Id, WhoId=con.Id);   
        
        insert newUser;
        insert acc;
        insert con;
        insert ts;   
    }
    public static void apex8()
    {
        List<contact> conList=[select id from contact where Title='Finance'];
        for(Contact con:conList)
        {
            con.Title='Financial Analyst';
        }
        update conList;
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}