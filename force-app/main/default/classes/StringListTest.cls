public class StringListTest {
    public static List<String> generateStringList(Integer num) {
        List<String> gsl = new List<String>();
        
        while (num != 0) {
            gsl.add('Test ' + gsl.size());
            num -= 1;
        }
        
        return gsl;
    }
}