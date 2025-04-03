public class AccountHandler {
    public static Account insertNewAccount(String accName) {
        try {
			Account acct = new Account(Name=accName);
			insert acct;
            return acct;
		} catch (DmlException e) {
			System.debug('A DML exception has occurred: ' + e.getMessage());
            return null;
		}
    }
}