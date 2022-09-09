import { LightningElement } from 'lwc';

export default class ForEachLoopLWC extends LightningElement {

    CEOList;

    showlist(event){
        this.CEOList = [
            {
                id:1,
                name:'Mark',
                title:'ceo sf1'
            },
            {
                id:2,
                name:'Mark2',
                title:'ceo sf2'
            },
            {
                id:3,
                name:'Mark3',
                title:'ceo sf3'
            },
            {
                id:4,
                name:'Mark4',
                title:'ceo sf4'
            },
            {
                id:5,
                name:'Mark5',
                title:'ceo sf5'
            }
        ];
    }

}