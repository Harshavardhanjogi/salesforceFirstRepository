@isTest
 class BoxATest {
    static testMethod void TestFunc1(){
        Property__c prop1 = new Property__c();
        prop1.Property_Address__c = '647 Dorset rd, BN';
        Prop1.Suburb__c = 'Bayswater';
        prop1.Price__c = 900;
        prop1.Property_Type__c = 'premium';
        
        insert prop1;
        
        Property__c prop2 = new Property__c();
        prop2 = [SELECT Price__c FROM Property__c WHERE id =: prop1.Id];
    	System.assertEquals(700,prop2.Price__c);
    }
     
     static testMethod void TestFunc2(){
        Property__c prop1 = new Property__c();
        prop1.Property_Address__c = '64 Ben rd';
        Prop1.Suburb__c = 'Glen';
        prop1.Price__c = 200;
        prop1.Property_Type__c = 'cheap';
        
        insert prop1;
        
        Property__c prop2 = new Property__c();
        prop2 = [SELECT Price__c FROM Property__c WHERE id =: prop1.Id];
    	System.assertEquals(190,prop2.Price__c);
    }

}