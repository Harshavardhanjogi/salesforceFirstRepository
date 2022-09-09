public class BoxB {
    public static void updateprice(List<Pen__c> pen){
        for(Pen__c p:pen){
            if(p.Type__c=='Gel Pen'){
            p.Price__c = p.Price__c * 0.8;
                System.debug('Finised..');
                }
        }
    }

}