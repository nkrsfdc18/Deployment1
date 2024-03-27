trigger Account_Trigger on Account (before insert,Before update,Before Delete,After Insert,After Update,After Delete,After Undelete) {
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            Account_Trigger_Handler.UpdateRating(Trigger.New);
        }
    }
}