 /**********
 *Author:Naveen
 *Date:27th march 2024.
 *Object:Account.
  */

public class Account_Trigger_Handler {

    Public static void UpdateRating(List<Account>acctList){
        for(Account act:acctList){
            if(act.Industry=='Energy' || act.Industry=='Media' || act.Industry=='Education'){
                act.Rating='Hot';
            }
        }
    }
}