public class TestC {
    public static String name = 'first';
    public static String namena='sf';
    
    
    public void m1(){
        System.debug('name:'+name);
        // System.debug('namena:'+namena);
        name = 'harsha';
        
         System.debug('name 1:'+name);
         //System.debug('namena 1:'+namena);
        name = 'harsha 2';
        //namena = 'Bindu 2';
        System.debug('name 2:'+namena);
         //System.debug('namena 2:'+namena);
    }
    
    public static void m2(){
        System.debug('name from m2:'+name);
    }
    
    public void m3(){
	System.debug('Hello from m3'+namena);
        namena = 'xxx';
        System.debug('Hello from m3 2 '+namena);
    }
    public void m4(){
	System.debug('Hello from m4 '+namena);

    }
}