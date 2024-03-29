public class Account_Trigger_Handler {
 
    Public static void UpdateRating(List<Account>acctList){
        for(Account act:acctList){
            if(act.Industry=='Energy' || act.Industry=='Media'){
                act.Rating='Hot';
            }
        }
    }
    Public static void CopyBillingAddressToShipping(list<Account>acctList){
        
        for(Account ac:acctList){
            if(ac.CopyBillingToShipping__c==true){
                ac.shippingCountry=ac.BillingCountry;
                ac.ShippingState=ac.BillingState;
                ac.ShippingCity=ac.BillingCity;
                ac.ShippingPostalCode=ac.BillingPostalCode;
                
                
            }
        }
        
    }
}