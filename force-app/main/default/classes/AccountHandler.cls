public class AccountHandler {
    public static Account insertNewAccount(String name){
        Account acc = new Account();
        acc.Name = name;
        try{
            insert acc;
        }
        catch(Exception e){
            acc = null;
        }
        return acc;
    }
}