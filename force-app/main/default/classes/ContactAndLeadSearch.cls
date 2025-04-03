public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(String nm) {
		List<List<SObject>> searchList = [FIND :nm IN NAME FIELDS RETURNING Contact(Name), Lead(Name)];
        return searchList;
    }
}