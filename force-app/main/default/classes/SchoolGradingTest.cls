@istest
public class SchoolGradingTest {
	@istest
    public static void Test1()
    {
        string gr=SchoolGrading.getTaskPriority(90);
        system.assertEquals('A', gr);
        string gr2=SchoolGrading.getTaskPriority(75);
        system.assertEquals('B', gr2);
        string gr3=SchoolGrading.getTaskPriority(51);
        system.assertEquals('D', gr3);
        string gr4=SchoolGrading.getTaskPriority(12);
        system.assertEquals('F', gr4);
    }
    @istest
    public static void Test2()
    {
        string gr=SchoolGrading.getTaskPriority(63);
        system.assertEquals('C', gr);
    }
}