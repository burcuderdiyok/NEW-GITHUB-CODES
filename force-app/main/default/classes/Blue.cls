public class Blue {

    public static void divideByZero() {
        try {            
            Integer a = 10/0; // an exception will be thrown here
        } catch(Exception e) {
            System.debug(e.getCause());
            System.debug(e.getLineNumber());
            System.debug(e.getMessage());
            System.debug(e.getStackTraceString());
            System.debug(e.getTypeName());
        }
    }
}