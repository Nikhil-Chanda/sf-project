@isTest
public class AddPrimaryContactTest {
	@testSetup
    static void setup() {
        List<Account> accs = new List<Account>();
        for (Integer i = 0; i < 50; i++) {
            accs.add(new Account(name='NY'+i, BillingState='NY'));
            accs.add(new Account(name='CA'+i, BillingState='CA'));
        }
        insert accs;
    }
    
    static testmethod void testQueueable() {
        Contact con = new Contact(FirstName='first', LastName='last');
        insert con;
        
        AddPrimaryContact apc = new AddPrimaryContact(con, 'CA');
        Test.startTest();
        System.enqueueJob(apc);
        Test.stopTest();
    }
}