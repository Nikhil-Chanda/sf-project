@isTest
private class AccountTriggerTest {
	@isTest static void TestCreateNewAccountInBulk() {
        // Test Setup data
        // Create 200 new Accounts
        List<Account> accts = new List<Account>();
        for(Integer i=0; i < 200; i++) {
            Account acct = new Account(Name='Test Account ' + i, BillingState='CA');
            accts.add(acct);
        }
        Test.startTest();
        insert accts;
        Test.stopTest();
        
        System.assertEquals(200, [SELECT COUNT() FROM Account WHERE ShippingState='CA']);
    }
}