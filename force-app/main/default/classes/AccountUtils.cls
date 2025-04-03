public class AccountUtils {
    public static List<Account> accountsByState(String State) {
        List<Account> lst = [SELECT Id, Name FROM Account WHERE BillingState = :state];
        return lst;
    }
}