public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String str){
        List<List<SObject>> result = new List<List<SObject>>();
        List<SObject> contacts = [
            SELECT Id
            FROM Contact
            WHERE FirstName =: str
            OR LastName =: str
        ];
        List<SObject> leads = [
            SELECT Id
            FROM Lead
            WHERE FirstName =: str
            OR LastName =: str
        ];
        result.add(contacts);
        result.add(leads);
        return result;
    }
}