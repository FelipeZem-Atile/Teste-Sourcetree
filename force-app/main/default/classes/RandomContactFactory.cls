public class RandomContactFactory {
    public static List<Contact>  generateRandomContacts (Integer i, String s){
        List<Contact> result = new List<Contact>();
        for(Integer j = 0; j < i; j++){
            Contact c = new Contact();
            c.FirstName = 'John' + j;
            c.LastName = s;
            result.add(c);
        }
        return result;
    }
}