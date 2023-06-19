@istest
public class areaTest {
    @istest
    public static void Test1(){
        integer result=area.maxV(new List<integer> {13,4,67,3,42});
        system.assertEquals(67, result);
        
    }
    @istest
    public static void Test2(){
        integer result=area.maxV(new List<integer> {-19,4,-65,39,0});
        system.assertEquals(39, result);
        
    }
        @istest
    public static void Test3(){
        integer result=area.maxV(new List<integer> {-3,-14,0,-23,-42});
        system.assertEquals(0, result);
        
    }
}