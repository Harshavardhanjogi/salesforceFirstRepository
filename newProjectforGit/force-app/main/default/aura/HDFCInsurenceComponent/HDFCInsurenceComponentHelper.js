({
	helperMethod:function(cmp) {
        alert("reached helper");
        var action = cmp.get("c.createRecord");
        alert("reached x");
        //var action=cmp.get("c.createRecord");
        action.setParams({ client:varClient });
        alert("reached 1");
        action.setCallback(this, function(a){
             var state = a.getState();
            if(state == "SUCCESS"){
            var newEmptyClientRec = {'sobjectType':'HDFC_customer__c',
                                     'First_Name__c':'',
                             		'Email__c':'',
                             		'country__c':'',
                             		'Salary__c':''
                                    };
            component.set("v.AttrClient", newEmptyClientRec);
                alert("create success");
            } else if(state == "ERROR"){
                alert("create failed error");
            }
	});
        $A.enqueueAction(action);
	}
})