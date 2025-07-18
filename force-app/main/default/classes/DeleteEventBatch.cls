public class DeleteEventBatch  implements Database.Batchable<sObject>{
    
    public Database.QueryLocator start(Database.BatchableContext batchContext){
       string Query = 'Select Id, Name From Event__c Where Live__c = true AND End_Date_Time__c < LAST_N_MONTHS:2';
        return Database.getQueryLocator(Query);
    }
    
    public void execute(Database.BatchableContext batchContext , List<Event__c> eventlist){
        if(!eventlist.isEmpty()){
            List<Database.DeleteResult> deleteResult = Database.delete(eventlist);
            for(Database.DeleteResult dr : deleteResult){
                if(!dr.isSuccess()){
                    List<Database.Error> errors = dr.getErrors();
                    String errorInString = String.join(errors , ',');
                    TransactionLogHandler.doHandleExceptionWithError(errorInstring,'DeleteEventBatch');
                }
            }
        }
        
    }
    
    public void finish(Database.BatchableContext batchContext){
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        
        mail.setSubject('Batch Processing Completed');
        List<String> toAddress = new List<String>();
        toAddress.add('sfdcpanther@gmail.com');
        mail.setToAddresses( toAddress );
        mail.setSenderDisplayName('SFDCPanther');
        
        mail.setHtmlBody('The DeleteEventBatch Batch Prcoessing has been Completed');
        List<Messaging.SingleEmailMessage> emails = new List<Messaging.SingleEmailMessage> {mail};
        Messaging.sendEmail(emails);
        
    }

}