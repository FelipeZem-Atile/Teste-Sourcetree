public class ContactSearch {
    public static List<Contact> searchForContacts(String ln, String pc){
        return [
            SELECT Id
            , Name
            FROM Contact
            WHERE LastName =: ln
            AND MailingPostalCode =: pc
        ];
    }
}