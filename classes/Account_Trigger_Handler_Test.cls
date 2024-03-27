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
    
}