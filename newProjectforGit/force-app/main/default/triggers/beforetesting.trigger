trigger beforetesting on stud__c (before update, after update) {
    
    if (Trigger.isBefore) {
        System.debug('********Trigger values isBefore***********');
        System.debug('***SFDC: Trigger.old is: ' + Trigger.old);
        System.debug('***SFDC: Trigger.new is: ' + Trigger.new);
    }
    
    if (Trigger.isAfter) {
        System.debug('********Trigger values isAfter***********');    
        System.debug('***SFDC: Trigger.old is: ' + Trigger.old);
        System.debug('***SFDC: Trigger.new is: ' + Trigger.new);
       }
}