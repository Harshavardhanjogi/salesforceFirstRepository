@RestResource(UrlMapping = '/showleads')
global class RestReadClass {
    @HttpGet
    global static List<Lead> getLeads(){
        List<Lead> varList;
		varList = [SELECT id, Name FROM LEAD LIMIT 20];
		return varList;    
    }

}