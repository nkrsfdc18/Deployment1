trigger Account_Trigger on Account (before insert,Before update,Before Delete,After Insert,After Update,After Delete,After Undelete) {
    if(Trigger.isInsert){
        if(Trigger.isBefore){
            Account_Trigger_Handler.UpdateRating(Trigger.New);
             Account_Trigger_Handler.CopyBillingAddressToShipping(Trigger.New);
        }else if(Trigger.isAfter){
            Account_Trigger_Handler.AcctCreationwithRelaedCnt(Trigger.New);
        }
    }
}