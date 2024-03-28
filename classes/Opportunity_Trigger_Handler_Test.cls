@isTest
public class Opportunity_Trigger_Handler_Test {

    @isTest
    Public static void OptyAmountchecktest(){
        list<Opportunity>listofopty=New list<opportunity>();
        for(integer i=1;i<5;i++){
            opportunity op=New opportunity();
            op.Name='test'+i;
            op.StageName='Prospect';
            op.CloseDate=system.today();
            op.Amount=200000;
            listofopty.add(op);
        }
        test.starttest();
        insert listofopty;
        test.stoptest();
        
        list<Opportunity>updatedOptylist=[select id,amount,description from Opportunity where id =: listofopty[0].id];
        system.assertEquals('Hot Opportunity',updatedOptylist[0].description);
    }
}