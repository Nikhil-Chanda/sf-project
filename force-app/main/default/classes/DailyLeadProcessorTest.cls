@isTest
public class DailyLeadProcessorTest {
    public static String CRON_EXP = '0 0 1 * * ?';
	@isTest
    static void testScheduledJob() {
        List<Lead> leads = new List<Lead>();
        for (Integer i = 0; i < 200; i++) {
            leads.add(new Lead(LastName='last'+i, Company='comp',status='Open - Not Contacted'));
        }
        insert leads;
        
        Test.startTest();
        String jobId = System.schedule('DailyLeadProcessor', CRON_EXP, new DailyLeadProcessor());
    }
}