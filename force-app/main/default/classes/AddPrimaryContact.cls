public class AddPrimaryContact implements Queueable {
	private Contact contact;
    private String state;
    
    public AddPrimaryContact(Contact con, String sta) {
        this.contact = con;
        this.state = sta;
    }
    
    public void execute(QueueableContext context) {
        List<Account> accounts = [SELECT ID, (SELECT ID FROM contacts) FROM account where BillingState = :state LIMIT 200];
        List<Contact> cons = new List<Contact>();
        
        for (Account acc : accounts) {
            Contact c = contact.clone();
            c.AccountId = acc.ID;
            cons.add(c);
        }
        
        if (cons.size() > 0) {
            insert cons;
        }
    }
}