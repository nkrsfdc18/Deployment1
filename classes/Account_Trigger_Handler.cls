public class Account_Trigger_Handler {
 
    Public static Void AcctCreationwithRelaedCnt(List<Account>acctList){
        //We need to Create Accont .
        //Whenever We are Creating Account it Should Automatically Create Related Contact.
        
        List<Contact>cntList=New list<Contact>();
        for(Account ac:acctList){
            contact ct=New contact();
            ct.LastName=ac.Name;
            ct.Phone=ac.phone;
            ct.Fax=ac.Fax;
            ct.AccountId=ac.id;
            ct.Description=ac.Description;
            cntList.add(ct);
        }
        if(!cntList.isEmpty()){
            Insert cntList;
        }
       
    }
    Public static void UpdateRating(List<Account>acctList){
        //We need to Update Rating Field whenever Account Industry is Equal to Energy or Media.
        for(Account act:acctList){
            if(act.Industry=='Energy' || act.Industry=='Media'){
                act.Rating='Hot';
            }
        }
    }
    Public static void CopyBillingAddressToShipping(list<Account>acctList){
        //We need to Copy the Billing Address Automatically Whenever CopyBillingtoshipping Checked.
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