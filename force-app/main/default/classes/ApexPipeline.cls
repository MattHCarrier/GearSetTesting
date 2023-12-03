/**
 * @description class testing out gearset pipeline
 */

public with sharing class ApexPipeline {
    /**
    * @description creates an account in salesforce
    */
    private string companyName; 
    public ApexPipeline(string companyName) {
        this.companyName = companyName;
        
    }


    public void createAccount(){
        Account acc = new Account(Name=this.companyName);
        if(Account.SObjectType.getDescribe().isAccessible() && schema.SObjectType.Account.fields.Name.isAccessible()){
            Database.insert(acc);
        }
        
    }
}