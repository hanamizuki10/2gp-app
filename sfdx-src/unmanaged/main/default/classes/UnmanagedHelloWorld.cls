// sfdx force:apex:class:create -n UnmanagedHelloWorld -d sfdx-src/unmanaged/main/default/classes
// sfdx force:apex:class:create -n UnmanagedHelloWorldTest -d sfdx-src/unmanaged/main/default/classes/test
public with sharing class UnmanagedHelloWorld {
    public UnmanagedHelloWorld() {
        System.debug('Unmanaged Hello World');
    }
    public String greet(String name) {
        return 'Unmanaged Hello, ' + name;
    }
}
