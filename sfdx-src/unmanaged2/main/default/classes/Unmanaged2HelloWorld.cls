// sfdx force:apex:class:create -n Unmanaged2HelloWorld -d sfdx-src/unmanaged2/main/default/classes
// sfdx force:apex:class:create -n Unmanaged2HelloWorldTest -d sfdx-src/unmanaged2/main/default/classes/test

public with sharing class Unmanaged2HelloWorld {
    public Unmanaged2HelloWorld() {
        System.debug('Unmanaged2 Hello World');
    }
    public String greet(String name) {
        return 'Unmanaged2 Hello, ' + name;
    }
}
