public class ContactSearch {
    public static List<Contact> searchForContacts(String lname, String mailPostCode) {
        List<Contact> ctlst = [SELECT id, name FROM Contact Where LastName=:lname AND MailingPostalCode=:mailPostCode];
        return ctlst;
    }
}