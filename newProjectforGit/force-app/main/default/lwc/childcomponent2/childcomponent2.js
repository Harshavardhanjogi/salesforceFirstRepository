import { LightningElement, api } from 'lwc';

export default class Childcomponent2 extends LightningElement {

    @api name='Harshavardhan Bindushree';
    @api description='cute couple';

    handlebuttonclick(){
        const evt = new CustomEvent('mycustomevent',{
            detail:
            {
                name:this.name,
                description:this.description
            }
        });
        this.dispatchEvent(evt);

    }
}