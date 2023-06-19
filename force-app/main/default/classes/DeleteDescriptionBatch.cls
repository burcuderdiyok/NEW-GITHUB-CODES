public class DeleteDescriptionBatch implements Database.Batchable<SObject>{
    		    //getting all the contacts having 
    public Database.QueryLocator start(Database.BatchableContext bc) {
        String query= 'select id, name from Account order by CreatedDate desc limit 250';
        return Database.getQueryLocator(query);
    }
    //go through the each contact and update description
    public void execute(Database.BatchableContext bc, List<Account> scope){
        List<Account> deletedList=new List<Account>();
        if(scope!=null){
           for(Account a:scope){
                a.Description='delete';
deletedList.add(a);
}
            delete deletedList;
        }
    }
    public void finish(Database.BatchableContext bc){
        System.debug('update Contact Description Batch Apex');
    }
}