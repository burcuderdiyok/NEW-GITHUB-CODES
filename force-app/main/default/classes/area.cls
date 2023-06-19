public class area {
    public static integer maxV(List<integer> l){
        integer maxi=l[0];
        for(integer i=0; i<l.size(); i++){
            
            if(l[i]>maxi){
                maxi=l[i];
            }
        }
	return maxi;      
    }
}