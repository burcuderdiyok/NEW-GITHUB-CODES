@RestResource(urlMapping='/FieldAccount/*')
global class RestCaseController {
	@HTTPGet
    global static list<case> numberOfRelatedCases(){
        String acName=RestContext.request.params.get('AccountName');
        String acRating=RestContext.request.params.get('AccountRating');
        
        Account acc=[select id, name from account where Name =:acName and Rating =:acRating limit 1];
        List<case> lstCase=[select id, Origin from Case where accountId=:acc.Id];
        
        return lstCase;
    }
    @HTTPPost
    global static String createNewAccount(String AccountName, String AccountRating){
              
        Account acc=new Account();
        acc.Name= AccountName;
        acc.Rating= AccountRating;
        insert acc;
        
        return 'new account';
    }
    @HTTPPatch
    global static String updateAccount(String AccountId, String AccountPhone, String AccountName){
        Account acc=[select id from account where Id=:AccountId ];
        acc.Name=AccountName;
        acc.Phone=AccountPhone;
        update acc;
        
        return 'updated';       
    }   
 @HTTPDelete
    global static String deleteAccount(){
        String AccountId=RestContext.request.params.get('AccountId');
        Account acc=[select id from account where Id=:AccountId ];
        delete acc;
        
        return 'deleted';       
    }     
}