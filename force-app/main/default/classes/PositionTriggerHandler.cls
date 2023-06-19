public class PositionTriggerHandler {
	public static void updatePay(List<Position__c> posList){
        for(Position__c pos:posList){
            if(pos.OpenDate__c == null && pos.MinPay__c == null && pos.MaxPay__c== null){
               pos.OpenDate__c =Date.today(); 
               pos.MinPay__c = 10000;
               pos.MinPay__c = 15000;
            }
        }
}
}