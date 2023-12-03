@IsTest
private class TestApexPipeline {
    @IsTest
    static void createOneAccount(){
        
        Test.startTest();
        ApexPipeline testPipe = new ApexPipeline('Matt Test Company');
        testPipe.createAccount();
        List<Account> acc = [Select Name FROM Account where name = 'Matt Test Company'];
        Assert.areEqual(1, acc.size(),'Expected 1 account but found ' + acc.size());
        Test.stopTest();
        
    }
}
