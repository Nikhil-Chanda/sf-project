public class DailyLeadProcessor implements Schedulable {
    public void execute(SchedulableContext ctx) {
        List<Lead> leads = [SELECT ID FROM Lead WHERE LeadSource = null LIMIT 200];
        List<Lead> blanks = new List<Lead>();
        
        for (Lead l : leads) {
            l.LeadSource = 'DreamForce';
            blanks.add(l);
        }
        update blanks;
    }
}