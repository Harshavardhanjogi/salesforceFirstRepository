global class Addressx implements Database.Batchable<sObject> {
   
    global Database.QueryLocator start(Database.BatchableContext bc){
        System.debug('Start method done');
        return Database.getQueryLocator([Select Customer_name__c,	Post_code__c, Suburb_name__c FROM Customer__c]) ;
        
    }

    global void execute(Database.BatchableContext bc, List<Customer__c> lcust){ 
        for(Customer__c c:lcust){
            integer i = c.Post_code__c.intValue();
            string Postcode = String.valueOf(i);
            string suburb = getsuburb(Postcode);
            c.Suburb_name__c = suburb;                
            System.debug(c.Post_code__c);
        }
        update lcust;
    }
    
    global void finish(Database.BatchableContext bc){
        System.debug('Finished');
    }
    
    public static string getsuburb(string postcode){
        System.debug('postcode:'+postcode);
             HTTP h = new HTTP();
            	HTTPRequest req = new HttpRequest();
             req.setEndpoint('http://v0.postcodeapi.com.au/suburbs/'+postcode+'.json');
            req.setMethod('GET');  
            HttpResponse res = h.send(req);    
            System.debug(res.getBody());
            JSONParser parser = JSON.createParser(res.getBody());
            parser.nextToken();
            parser.nextToken();
            parser.nextToken();
       		 parser.nextToken();
            System.debug('4:' +parser.gettext()); 
        	 String Suburb2 = parser.gettext(); 
        return Suburb2;
        
    }
    
}