@RestResource(UrlMapping = '/createleadxxx/*')
global class CreateLeadRest {

@HttpPost
global static String doPost(String Namez, String Big_branch){
        System.debug('Printing from doPost');
        bran__c le = new bran__c();
        le.Name = Namez;
        le.Big_branch_name__c = Big_branch;
        insert le;
        return le.id;
     
    }
}