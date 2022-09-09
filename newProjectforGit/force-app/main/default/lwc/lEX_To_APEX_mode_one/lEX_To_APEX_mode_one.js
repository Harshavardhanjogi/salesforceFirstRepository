import { LightningElement, wire } from 'lwc';

import getaccts from '@salesforce/apex/getAccList.getAccListMethod';

export default class LEX_To_APEX_mode_one extends LightningElement {

    @wire(getaccts) acclist;

}