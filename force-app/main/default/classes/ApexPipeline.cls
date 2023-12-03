/**
 * @description class testing out gearset pipeline
 */

public with sharing class ApexPipeline {

    private string companyName; 
    public ApexPipeline(string companyName) {
        this.companyName = companyName;
        
    }

    /**
    * @description creates an account in salesforce
    */
    public void createAccount(){
        Account acc = new Account(Name=this.companyName);
        if(Account.SObjectType.getDescribe().isAccessible() && schema.SObjectType.Account.fields.Name.isAccessible()){
            Database.insert(acc);
        }
        
    }
}