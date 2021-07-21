public with sharing class HelloWorld {
    public HelloWorld() {
        System.debug('Hello World');
    }

    public String greet(String name) {
        return 'Hello, ' + name;
    }

    public String getA(String value) {
        return 'A, ' + value;
    }

    public String getB(String value) {
        return 'B, ' + value;
    }

    public String getC(String value) {
        return 'C, ' + value;
    }

    public String getD(String value) {
        return 'D, ' + value;
    }

    public String getE(String value) {
        return 'E, ' + value;
    }

    public String getCheckCountString() {
        Integer count = 0;
        // 仮：ユーザー組織固有のカスタム項目を指定してもらい、その値によって処理を変更させるようなケース（これはパッケージに入れることはできないけど、絶対にテストさせたいフロー）
        String fieldName = 'hanamizuki_dev1__CustomSampleIsCheck__c';
        DescribeSObjectResult sObjectDesc = Opportunity.getSObjectType().getDescribe();
        Map<String, Schema.SObjectField> fieldsMap = sObjectDesc.fields.getMap();
        if (fieldsMap.containsKey(fieldName)) {
            Schema.DescribeFieldResult fieldDesc = fieldsMap.get(fieldName).getDescribe();
            if (fieldDesc.isAccessible()) {
                // アクセス権限がある場合
                String query = 'SELECT ' + fieldName + ' FROM Opportunity';
                List<sObject> records = Database.query(query);
                for(sObject record : records) {
                    if ( (Boolean)record.get(fieldName) ){
                        count++;
                    }
                }
            }
        }
        return 'CustomSampleIsCheck__c : ' + count; 
    }

}
