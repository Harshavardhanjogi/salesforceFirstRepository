global class HDFCCreateClientRecord {

    @AuraEnabled
    global static void createRecord(HDFC_customer__c client){
        if(client != null){
            insert client;
        }
       }
}