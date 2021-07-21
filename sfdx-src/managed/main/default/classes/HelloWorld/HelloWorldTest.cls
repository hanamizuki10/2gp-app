@isTest
public with sharing class HelloWorldTest {
    @isTest
    public static void testHelloWorld() {
        HelloWorld helloWorld = new HelloWorld();
        System.assertEquals('Hello, 2GP', helloWorld.greet('2GP'));
    }

    @isTest
    public static void testGetCheckCount_Zero() {
        HelloWorld helloWorld = new HelloWorld();
        String actualCheckCountString = helloWorld.getCheckCountString();
        System.assertEquals('CustomSampleIsCheck__c : 0', actualCheckCountString);
    }
}