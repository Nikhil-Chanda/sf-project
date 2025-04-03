trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
	List<Task> lst = new List<Task>();
    for (Opportunity opp : [SELECT Id, StageName FROM Opportunity WHERE StageName='Closed Won' AND Id IN :Trigger.New]) {
        lst.add(new Task(Subject='Follow Up Test Task', WhatId=opp.Id));
    }
    if (lst.size() > 0) {
        insert lst;
    }
}