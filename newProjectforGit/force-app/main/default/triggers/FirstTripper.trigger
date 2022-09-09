trigger FirstTripper on Property__c (before insert) {
    BoxA.updatePropertyPrice(trigger.new);
}