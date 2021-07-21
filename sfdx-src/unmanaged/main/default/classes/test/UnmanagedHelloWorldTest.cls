@isTest
public with sharing class UnmanagedHelloWorldTest {
    @isTest
    public static void testHelloWorld() {
        UnmanagedHelloWorld helloWorld = new UnmanagedHelloWorld();
        System.assertEquals('Unmanaged Hello, 2GP', helloWorld.greet('2GP'));
    }

    @isTest
    public static void testGetA() {
        HelloWorld helloWorld = new HelloWorld();
        System.assertEquals('A, 2GP', helloWorld.getA('2GP'));
    }
    @isTest
    public static void testGetB() {
        HelloWorld helloWorld = new HelloWorld();
        System.assertEquals('B, 2GP', helloWorld.getB('2GP'));
    }

    @isTest
    public static void testGetC() {
        HelloWorld helloWorld = new HelloWorld();
        System.assertEquals('C, 2GP', helloWorld.getC('2GP'));
    }

    @isTest
    public static void testGetD() {
        HelloWorld helloWorld = new HelloWorld();
        System.assertEquals('D, 2GP', helloWorld.getD('2GP'));
    }

    @isTest
    public static void testGetCheckCount() {
        Account acc = new Account(Name='TestAccount');
        insert acc;
        List<Opportunity> opps = new List<Opportunity>();
        opps.add(new Opportunity(Name=acc.Name + ' Opportunity 1',
                                AccountId=acc.Id,
                                StageName='Prospecting',
                                CloseDate=System.today().addMonths(1),
                                CustomSampleIsCheck__c=true));
        opps.add(new Opportunity(Name=acc.Name + ' Opportunity 2',
                                AccountId=acc.Id,
                                StageName='Prospecting',
                                CloseDate=System.today().addMonths(1)));
        opps.add(new Opportunity(Name=acc.Name + ' Opportunity 3',
                                AccountId=acc.Id,
                                StageName='Prospecting',
                                CloseDate=System.today().addMonths(1),
                                CustomSampleIsCheck__c=true));
        insert opps;
        Test.startTest();
        HelloWorld helloWorld = new HelloWorld();
        String actualCheckCountString = helloWorld.getCheckCountString();
        Test.stopTest();

        System.assertEquals('CustomSampleIsCheck__c : 2', actualCheckCountString);
    }

}