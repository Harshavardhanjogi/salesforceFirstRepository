trigger MyPenTrigger on Pen__c (before insert) {
    if(Trigger.isinsert && Trigger.isBefore){
        BoxB.updateprice(Trigger.new);
    }
}