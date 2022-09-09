public class CurrencyConverterClass {

    public static void currencyExchange(Decimal aud){
        HttpRequest httpreq = new HttpRequest();
        HttpResponse httpres = new HttpResponse();
        HTTP http = new Http();
        
        httpreq.setEndpoint('https://api.apilayer.com/exchangerates_data/latest?base=AUD');
        httpreq.setMethod('GET');
        httpreq.setHeader('apikey', 'no5JrgSzfPNxIzfcsLEkAQ7XU5hxTitD');
        HttpResponse hresp = http.send(httpreq);
  
        String jsonString = hresp.getBody();
        
        Map<String, Object> jsonBody = (Map<String, Object>) Json.deserializeUntyped(jsonString);
        System.debug('Rates : '+jsonBody.get('rates'));
        Map<String, Object> mMap = (Map<String, Object>)jsonBody.get('rates');
        Decimal conv = (Decimal) mMap.get('INR');
        Decimal finalc = aud * conv;
        System.debug('Final value of Aud to Aust is : '+finalc);
    }
}