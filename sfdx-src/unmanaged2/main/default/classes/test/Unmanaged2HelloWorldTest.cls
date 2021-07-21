@isTest
public with sharing class Unmanaged2HelloWorldTest {
    @isTest
    public static void testHelloWorld() {
        Unmanaged2HelloWorld helloWorld = new Unmanaged2HelloWorld();
        System.assertEquals('Unmanaged2 Hello, 2GP', helloWorld.greet('2GP'));
    }
}
