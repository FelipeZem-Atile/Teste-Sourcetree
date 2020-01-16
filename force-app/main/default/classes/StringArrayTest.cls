public class StringArrayTest {
    public static List<String> generateStringArray(Integer a){
        List<String> result = new List<String>();
        for(Integer i = 0; i < a; i++){
            result.add('Test ' + i);
        }
        return result;
    }
}