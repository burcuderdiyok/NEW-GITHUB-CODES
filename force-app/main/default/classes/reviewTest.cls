public class reviewTest {
    public void create(string ln){
       contact con=new contact();
        con.LastName=ln;
        insert con;
    }
    public void createList(List<string> lNames){
        List<contact> multiCon=new List<contact>();
        contact singleCon=new contact();
        for(string lName:lNames){
            singleCon.lastname=lname;
            multiCon.add(singleCon);
        }
        insert multiCon;

    }
}