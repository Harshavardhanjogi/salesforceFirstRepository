public with sharing class getAccList {
    
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccListMethod() {
        List<Account> acclist=new List<Account>();
        acclist = [SELECT Name FROM Account LIMIT 20];
        return acclist;
    }
}