import { LightningElement } from 'lwc';

export default class Parentcomponent2 extends LightningElement {

    handlechildevent(event){
        var namefromChild = event.detail.name;
        var descfromChild = event.detail.description;
        alert('event handler in parent comp');
        alert('child comp stuff : '+namefromChild+'  '+descfromChild);
    }
}