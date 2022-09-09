import { LightningElement, api } from 'lwc';

export default class Childcomponent extends LightningElement {
    @api messagefromparent;
    @api projectcode;
    @api nakam;

}