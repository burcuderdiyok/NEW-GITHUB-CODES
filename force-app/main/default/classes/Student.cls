public class Student {
    private string name;
    private integer badge;

    public void setName(string stdName){
        name=stdName;
        system.debug('The student name is : '+ stdName);
    }
	
    public void setBadge(integer bdg){
        badge=bdg;
        system.debug('The student earn : '+bdg+ ' badge at Trailhead');
    }
    public void addBadge(){
        badge+=5;
        system.debug('The student\'s new badge is: '+badge);
    }
		
}