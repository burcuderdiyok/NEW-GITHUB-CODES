public class SendEmailForContact {
	public static void CreateTsk()
    {
        List<Account> accList=[select id, Active__c, createdDate, OwnerId from Account where Active__c='No' and CreatedDate < Last_n_MONTHS:1];
        List<ID> ownerIds= new List<ID>();
        List<Task> tsList= new List<Task>();
        
        for(Account acc:accList)
        {
  
            ownerIds.add(acc.OwnerId);
            Task ts=new Task();
            ts.WhatId=acc.Id;
            ts.Subject='TASK';
            ts.Status='Not Started';
            ts.OwnerId=acc.OwnerId;
            tsList.add(ts);
        }
        
        insert tsList;
        
        List<string> conEmailList=new List<string>();
        for(Account ac:accList)
        {
          List<Contact> conList= [select Id, LastName, Email, AccountId from contact where accountId=:ac.Id];
            for(contact con:conList)
            {
                conEmailList.add(con.Email);  
            }
        }
      
        List<string> emailList=new List<string>();

        List<user> userList=[select id, email from user where id in:ownerIds];
        	for(user us:userList)
            {
                emailList.add(us.Email);
            }
        notifyUsers(emailList);
        /*notifyUsers(conEmailList);*/
        
    }
    
    public static void notifyUsers(List<string> emailList)
    {
        
        Messaging.SingleEmailMessage mail=new Messaging.SingleEmailMessage();
        mail.setToAddresses(emailList);
        mail.setSubject('HEYY');
        mail.setPlainTextBody('please take care this account');
        List<Messaging.SingleEmailMessage> mailList= new List<Messaging.SingleEmailMessage>();
        mailList.add(mail);
        Messaging.sendEmail(mailList);
        
        
    }
    
}