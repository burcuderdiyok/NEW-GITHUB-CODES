public class maxInt {
    public static integer max(integer x, integer y, integer z ){
		integer max=x;
        if(y>max ){
            if(y>z){
                max=y;
            }else{
             max=z;   
            }    
        }else{
        }
        return max;
    }
    public static void convert(decimal m, decimal km ){
        decimal conKMtoM;
        decimal conMtoKM;
        conKMtoM=km*1.6;
        conMtoKM=m/1.6;
        system.debug(conMtoKM);
        system.debug(conKMtoM);
        
    }
    public static void sqr(){
        decimal x;
        decimal sqrX;
        sqrX=math.sqrt(x);
        system.debug(sqrX);
    }
    public static void febDays(){
        
        for(integer i=1; i<=28; i++){

        	String dayOfWeek = DateTime.newInstance(2021,2,i).format('EEEE');
            system.debug(dayOfWeek);
        }
    }
    public static void mulTable(){
       integer i=8;
            for(integer j=1; j<=10; j++){
                system.debug(i + '*' + j + '=' + i*j);
            }
        
    }
    public static void rand(){
        integer x=Integer.valueOf((math.random()*99)+1);
        system.debug(x);
        
    }
    public static void day(integer m, integer y){
        integer dayInMonth=Date.daysInMonth(y, m);
        for(integer i=1; i<=dayInMonth; i++){

                String dayOfWeek = DateTime.newInstance(y,m,i).format('EEEE');
            	system.debug(DateTime.newInstance(2021,2,i)+' ==> '+ dayOfWeek);

        }
    }
    public static void birthDay(integer d,integer m, integer y){        
        String dayOfWeek = DateTime.newInstance(y,m,d).format('EEEE');
        system.debug('my birtday is : '+ DateTime.newInstance(y,m,d)+ ' and is ' + dayOfWeek);
    }
    public static void howManyDayLived(integer d,integer m, integer y){
        date birthday=Date.newInstance(y,m,d);
        integer howManyDays=birthday.daysBetween(Date.Today());
        system.debug(howManyDays);    
    }
    public static void countDays1(){
		integer currentYear=date.today().year();
        date firstDate=date.newInstance(currentYear, 1, 1);
        integer countDay1=firstDate.daysBetween(date.today());
        system.debug(countDay1);  
    }
    public static void total7(){
        integer total=0;
        for(integer i=1; i<=1000; i++){
            if((math.mod(i,7))==0){
                total+=i;
            }
        }
        system.debug(total);
    }
    public static void palindrome(string s){
        boolean k;
        List<string> sList=s.split('');
        for(integer i=0; i<sList.size(); i++){
            if(sList[i]==sList[sList.size()-1-i]){ 
                k=true;
            }else{
                k=false;
            }
        }
        if(k==true){
            system.debug(s+' is polindrome');
        }else{
            system.debug(s+' not is polindrome');
        }
	}
    public static void palindrome2(string s){
        if(s==s.reverse()){
             system.debug(s+' is polindrome');
        }else{
             system.debug(s+' is not polindrome');
        }
    }
    public static void password(string p){
    	boolean hasAlpha=false;
        boolean hasNumeric=false;
        boolean hasSpecial=false;
        boolean hasUpperCase=false;
        boolean hasLowerCase=false;
        integer score=0;
        for(integer i=0; i<=p.length()-1; i++){
            if(p.substring(i, i+1).isAlpha())
            {
                hasAlpha=true;        
            }       
            if(p.substring(i, i+1).isNumeric())
            {
                hasNumeric=true;
            }
            if(p.substring(i, i+1).isAlpha() && p.substring(i, i+1).isNumeric())
            {
                hasSpecial=true;
            }
            if(p.substring(i, i+1).equals(p.substring(i, i+1).toUpperCase()))
            {
                hasUpperCase=true;
            }
            if(p.substring(i, i+1).equals(p.substring(i, i+1).toUpperCase()))
            {
                hasLowerCase=true;
            }   
        }
        if(hasAlpha=true)
        {
            score+=1;
        }
        if(hasNumeric=true)
        {
            score+=2;
        }
        if(hasSpecial=true)
        {
            score+=3;
        }
        if(hasUpperCase=true)
        {
            score+=2;
        }
        if(hasLowerCase=true)
        {
            score+=2;
        }
        if(score<5)
        {
            system.debug('It is a bad password!');
        }
         if(score>5 && score<7)
        {
            system.debug('It is a normal password!');
        }
        else
        {
            system.debug('It is a best password!');
        }
        
    }
    
}