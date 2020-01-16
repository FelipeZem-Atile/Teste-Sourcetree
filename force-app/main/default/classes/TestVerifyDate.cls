@isTest 
public class TestVerifyDate {
    @isTest 
    public static void CheckDates_Within30Days(){
        Date a = Date.newInstance(2020, 01, 01);
        Date b = Date.newInstance(2020, 01, 20);
        Date c = VerifyDate.CheckDates(a, b);
        System.AssertEquals(b, c);
    }
    
    @isTest 
    public static void CheckDates_Without30Days(){
        Date a = Date.newInstance(2020, 01, 01);
        Date b = Date.newInstance(2020, 02, 20);
        Date c = VerifyDate.CheckDates(a, b);
        System.AssertEquals(a, c);
    }
}