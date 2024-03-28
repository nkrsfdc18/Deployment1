public class Opportunity_Trigger_Handler {

    Public static void OpportunityAmountCheck(list<opportunity>optyList){
        
        for(Opportunity op:optyList){
            if(op.Amount >= 100000 && op.Amount<=500000){
                op.Description='Hot Opportunity';
            }
        }
    }
}