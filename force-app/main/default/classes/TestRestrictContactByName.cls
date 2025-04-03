@isTest
private class TestRestrictContactByName {
	@isTest
    static void TestRestriction() 
    {
        List<Contact> listContact= new List<Contact>();
        listContact.add(new Contact(FirstName='Francesco', LastName='Riggio' , email='Test@test.com'));
        listContact.add(new Contact(FirstName='Francesco1', LastName = 'INVALIDNAME',email='Test@test.com'));
        
        Test.startTest();
        	insert listContact;
        Test.stopTest();       
    }  
}