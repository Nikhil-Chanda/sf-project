public class NewCaseListController {
    public List<Case> getNewCases() {
    	return [Select Id, caseNumber from case where status ='New'];
    }
}