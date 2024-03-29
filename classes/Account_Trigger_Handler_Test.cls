@istest
public class Account_Trigger_Handler_Test {

    @isTest
    Public static void RatingUpdateTest(){
        list<Account>acctList=New List<Account>();
        for(integer i=1;i<5;i++){
            Account ac=New Account();
            ac.Name='Test'+i;
            ac.Industry='Media';
            acctList.add(ac);
        }
        test.startTest();
        Insert acctList;
        test.Stoptest();
        List<Account>updateAcct=[select id,name,Rating from account where id =:acctList[0].id];
        System.AssertEquals('Hot',updateAcct[0].Rating);
    }
    
    @isTest
    Public Static void CopyBillingtoShipping(){
        list<Account>acctList=New List<Account>();
        for(integer i=1;i<5;i++){
            Account ac=New Account();
            ac.Name='Test'+i;
            ac.BillingCountry='India';
            ac.BillingState='Andhra';
            ac.BillingCity='Kadapa';
            ac.BillingPostalCode='2345';
            ac.CopyBillingToShipping__c=true;
            acctList.add(ac);
        }
        test.startTest();
        Insert acctList;
        test.Stoptest();
        List<Account>updateAcct=[select id,CopyBillingToShipping__c,ShippingCity from account where id =:acctList[0].id];
        System.AssertEquals('Kadapa',updateAcct[0].ShippingCity);
    }
    
    
}