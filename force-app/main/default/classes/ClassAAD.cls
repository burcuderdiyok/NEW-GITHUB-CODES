public class ClassAAD {
	public static Integer maxIntegerofaList(List<Integer> intList){  //(5,4,3,2,8)
        
        Integer maximuminteger = intList.get(0);
        
        for(Integer i=1; i<intList.size(); i++){
            
            if(intList.get(i)>maximuminteger){
                
                maximuminteger = intList.get(i);
            }
            
        }
        
        return maximuminteger;
        
        
    }
}