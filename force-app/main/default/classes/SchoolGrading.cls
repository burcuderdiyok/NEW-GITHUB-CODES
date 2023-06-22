public class SchoolGrading {
	public static String getTaskPriority(Integer score) {
        
        String grade;
        if (score >85) {
            grade = 'A'; }
        else if (score > 70) {
            grade = 'B';
        }
        else if (score > 60) {
            grade = 'C';}
        else if (score >50) {
            grade = 'D';
        } else {
            grade = 'F';
        }
        return grade;
    }
}