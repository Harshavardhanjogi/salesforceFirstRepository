import { LightningElement } from 'lwc';

export default class LoanCalculator extends LightningElement {

    principal;
    years;
    roi;
    
    loanresult;

    principalvalueHandler(event){
        this.principal=parseInt(event.target.value);
    }
    yearsvalueHandler(event){
        this.years=parseInt(event.target.value);
    }
    roivalueHandler(event){
        this.roi=parseInt(event.target.value);
    }
    calculateLoan(){
        alert('reached calculator');
       this.loanresult='The total interest is : '+(this.principal * this.years * this.roi)/100;
       alert('DONE proceessing:'+this.loanresult);
    }
}