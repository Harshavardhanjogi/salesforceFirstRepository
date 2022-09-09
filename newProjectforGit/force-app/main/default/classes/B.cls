public class B {
public static void m(){
        System.debug('aname first:'+A.aname);
        A.aname = 'Gowda';
    	System.debug('aname later:'+A.aname);
   		A.m2();
       
    }
}