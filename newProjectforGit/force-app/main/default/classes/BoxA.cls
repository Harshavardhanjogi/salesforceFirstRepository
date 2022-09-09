public Class BoxA {

public static void updatePropertyPrice(List<Property__c> propList){
    for(Property__c prob :propList ){
        if(prob.Property_Type__c == 'Premium'){
            prob.Price__c = prob.Price__c - 200;
        }
        if(prob.Property_Type__c == 'cheap'){
            prob.Price__c = prob.Price__c - 10;
        }
    }
 }
}