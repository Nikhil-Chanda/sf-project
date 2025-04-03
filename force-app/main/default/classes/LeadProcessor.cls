public class LeadProcessor implements Database.Batchable<sObject> {
    public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator('SELECT LeadSource FROM Lead');
    }
    
    public void execute(Database.BatchableContext bc, List<Lead> leads) {
        for (Lead l : leads) {
            l.LeadSource = 'Dreamforce';
        }
        update leads;
    }
    
    public void finish(Database.BatchableContext bc) {
        
    }
}