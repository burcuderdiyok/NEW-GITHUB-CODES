public class CreateTaskforNonActiveAccount {
    /*User Case: The Accounts which created last month if they are not active 
                 create a task for the Account Owner and send Email to the User.*/
	public static void CreateTaskAcc()
    {
        List<Account> accList=[select id, Active__c, createdDate, OwnerId from account where Active__c='No' AND createdDate=LAST_N_DAYS:5];
        List<Task> tsList= new List<Task>();
        for(Account acc:accList)
        {
           Task ts=new Task();
           ts.WhatId= acc.Id;
           ts.Status='Not started';
           ts.Subject='new task';
           ts.OwnerId=acc.OwnerId;
           tsList.add(ts);
        }
        insert tsList;
        
            User us=[select id, Email from user where id=:accList[0].OwnerId];
        	notifyUser(us.Email);
        
        
        
    }
    public static void notifyUser(string email)
    {
        Messaging.SingleEmailMessage mail=new Messaging.SingleEmailMessage();
        mail.toaddresses=new string[] {email};
        mail.setSubject('You have a new task');
        mail.setPlainTextBody('Hey.Please take care of this account');
        List<Messaging.SingleEmailMessage> mailList=new List<Messaging.SingleEmailMessage>();
        mailList.add(mail);
        Messaging.sendEmail(mailList);
    }
}