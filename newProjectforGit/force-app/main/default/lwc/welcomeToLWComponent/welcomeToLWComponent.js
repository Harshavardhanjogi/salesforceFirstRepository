import { LightningElement } from 'lwc';

 import anyname from '@salesforce/resourceUrl/custlogo';

export default class WelcomeToLWComponent extends LightningElement {
    callinterval=0;
    intervar;
    imageprop=anyname;

    handleClick(event) {
        var clickedButtonLabel;
       clickedButtonLabel = event.target.value;
        alert("You have entered:"+clickedButtonLabel);
    }
    firstname = "Harshaaa";
    showDealStatus = false;
    changename(event){
        this.firstname = "Gowda";
    }


    startTimer(event){
        var parentthis = this;
        alert('starting timer');
        this.intervar = setInterval(function() {
            parentthis.callinterval +=100;
        },100);
        
    }

    stopTimer(){
        this.callinterval = 0;
        clearInterval(this.intervar);
    }

}