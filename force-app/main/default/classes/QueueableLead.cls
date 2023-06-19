public class QueueableLead implements Queueable {
        public void execute(QueueableContext context ){
        Lead ld=new Lead();
        ld.firstName='clarusway';
        ld.Country='MainStreet';
        ld.Industry='Clarusway LLC';            
        insert ld;
    }

}