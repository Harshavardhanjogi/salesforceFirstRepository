({
    	createHDFC : function(component, event, helper) {
		var varClient = component.get("v.AttrClient");
        
        //validation
        if($A.util.isEmpty(varClient.First_Name__c) || $A.util.isUndefined(varClient.First_Name__c)){
            alert('First name is required');
            return;
        }
        if($A.util.isEmpty(varClient.Email__c) || $A.util.isUndefined(varClient.Email__c)){
            alert(' Email__c is required');
            return;
        }
        
        helper.helperMethod(varClient);    
	}
})