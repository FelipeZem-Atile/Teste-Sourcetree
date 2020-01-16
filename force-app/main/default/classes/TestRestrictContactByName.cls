@IsTest
public class TestRestrictContactByName {

    @IsTest
    public static void RestrictContactByName(){
        Contact c = new Contact();
        c.LastName = 'INVALIDNAME';
        Database.SaveResult result = Database.insert(c, false);
        System.assert(result.isSuccess());
    }
}