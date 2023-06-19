public class CreateContact {
    public void newContact(string conFirstName, string conLastName){   //exp:(FirstName1, LastName1)
        Contact con=new Contact();
        con.firstName=conFirstName;
        con.lastName=conLastName;
        
        insert con;
    }
    public void newContact(List<string> conlastNames){          //exp:{} empty list
        List<Contact> multiCon=new List<Contact>();
        for(string conLastName:conLastNames){
           Contact singleCon=new Contact();              //we create new contact
           singleCon.LastName=conLastName;               //we assign new contact's last name as inside the parameter
            multiCon.add(singleCon);                     // {LastName1}
                                                         //{LastName1,LastName2}
        }                                                //{LastName1,LastName2,LastName3}...
        
        insert multiCon;
    }    
}