public class Typecastings {
    
    public void ma(){
    SObject sobj = new Account();
    Schema.SObjectType sch = sobj.getSObjectType();
    System.debug('Typecase:'+sch);
    }
    
    public void mas(){
        if(stud__c.sObjectType.getDescribe().isAccessible()){
            System.debug('test:'+stud__c.sObjectType.getDescribe().isAccessible());
        }
    }
    
    
}