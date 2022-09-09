trigger FirstTrigger on Battle_Station__c (before insert, before update) {
    Battle_Station__c b = Trigger.new[0];
   // b.Name = b.Name + ' Apex Trigger';

}