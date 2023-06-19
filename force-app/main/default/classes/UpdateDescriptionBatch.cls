public class UpdateDescriptionBatch implements Database.Batchable<SObject>{
	    //getting all the contacts having 
    public Database.QueryLocator start(Database.BatchableContext bc) {
        String query= 'select id, Account.name, title,description ,Account.Description from contact where AccountId !=null';
        return Database.getQueryLocator(query);
    }
    //go through the each contact and update description
    public void execute(Database.BatchableContext bc, List<Contact> scope){
        List<Contact> updatedList=new List<Contact>();
        if(scope!=null){
            for(Contact c:scope){
                c.Description=c.Title+' of '+c.Account.Name+' : '+c.Account.Description;
                updatedList.add(c);
            }
            update updatedList;
        }

    }
    public void finish(Database.BatchableContext bc){
        System.debug('update Contact Description Batch Apex');

    }
}