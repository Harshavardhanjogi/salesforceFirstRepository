import { LightningElement } from 'lwc';

export default class CustomValidation extends LightningElement {

    validateinfo(){
        let searchCmp = this.template.querySelector(".namecmp");
        let dateCmp = this.template.querySelector(".datecmp");

        //fetching values
        let nameValue = searchCmp.value;
        let dateValue = dateCmp.value;

        if(!nameValue){
            searchCmp.setCustomValidity("Dude, come on. Enter the value");
        } else {
            searchCmp.setCustomValidity("");
        } searchCmp.reportValidity();

        if(!dateValue){
            dateCmp.setCustomValidity("Dude, come on. Enter the date value");
        } else {
            dateCmp.setCustomValidity("");
        } dateCmp.reportValidity();
    }    
}