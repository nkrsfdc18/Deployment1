trigger Opportunity_Trigger on Opportunity (before insert,Before Update,Before Delete) {

    if(Trigger.isInsert){
        if(Trigger.isBefore){
            Opportunity_Trigger_Handler.OpportunityAmountCheck(Trigger.New);
        }
    }
}