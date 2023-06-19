public class soqlApex {
	public static void accWithoutContacts()
    {
        List<Account> accList1=[select id, name from account where id not in (select Accountid from contact)];
        List<Account> accList2=[select id, name, (select id, LastName from contacts) from account ]; 
        List<Account> accList3=[select id, name, Owner.Name from account where Owner.IsActive=True and CreatedBy.IsActive=True];
        /*List<Account> accList4=[select id, name, (select id from contacts limit 2) from account where Id IN (select Accountid from contact GROUP BY AccountId Having Count(Id)>=2 )];*/
        List<Account> accList5=[SELECT Id, Name, (SELECT Id FROM Contacts LIMIT 2) FROM Account WHERE Id IN (SELECT AccountId FROM Contact)];
        List<AggregateResult> aggRes=[select  Rating, AVG(AnnualRevenue)  from account Group By Rating];
         	Decimal avg=(Decimal) aggRes[0].get('exp0');
        List<Account> accList6=[SELECT Id, Name, 
                                (select AccountId from Cases where Status!='closed'), 
                                (select AccountId from opportunities where stageName!='Closed Won' OR stageName!='Closed Lost') 
                                from account where Id NOT IN (select Accountid from contact)];
        List<Case> csList1=[select id, priority, status from case where priority='High' and status='closed'];
        List<Lead> ldList1=[select id from lead where status='Closed - Converted'];
        List<Account> accList7=[select id, name, (select id, LastName, email from contacts where email like '%gmail.com') from account ]; 
        List<Lead> ldList2=[select id from lead where LastModifiedDate < LAST_N_MONTHS:1 AND Owner.Profile.Name='System Administrator'];
        List<Account> accList8=[ select Id, Name, CreatedDate ,LastModifiedDate, BillingCity, BillingState, BillingCountry , 
                                (select Id from Contacts where MailingPostalCode='94105' ORDER BY Name desc limit 10),
                                (select Id from Opportunities where StageName='Closed Won' and Amount>10000 ORDER BY CloseDate desc limit 5 ),
                                (select Id from Cases where (Status='New' or Status='Escalated'))
                                from account 
                                where BillingCountry='United States' and (BillingState='CA' or BillingState='NY')
                                ORDER BY CreatedDate desc limit 50 ]; 
        List<Case> csList2=[ select Id from case where AccountId In (select Id from Account) and Account.Name like 'Bur%'];
        List<Case> csList3=[ select Id from case where                                           Account.Name like 'Bur%']; /*SAME ABOVE*/
        
        
        system.debug(accList1);
        
    }
}