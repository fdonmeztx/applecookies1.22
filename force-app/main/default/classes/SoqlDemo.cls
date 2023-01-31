public class SoqlDemo {
    public static void accountSOQL_1() {
        list<account> listAccount = [SELECT id , name FROM account];
        system.debug('list of accounts ' + listAccount );
    }

public static void accountSOQL_11(){
   account acc  =[SELECT id , name FROM account ORDER BY  
   createddate DESC LIMIT 1 ];
    system.debug('account recor ' + acc );

}
public static void accountSOQL_21(){
    account acc  =[SELECT id , name , phone, accountNumber, 
    website FROM account ORDER BY createddate DESC LIMIT 1 ];
     system.debug('lastest created account record ' + acc );
     string aName= acc.Name;
     string aPhone = acc.Phone;
     system.debug(aName);
     system.debug(aPhone + acc.Accountnumber);

}
    public static void accountSOQL_3() {
     list<Account> listAccount = [SELECT id, phone, name, accountnumber 
     FROM Account ORDER BY Createddate DESC LIMIT 10];
     //for each loop on the list.
         for (account eachAcc  : listAccount) {

             system.debug('each acc: ' + eachAcc);
             string accName = eachAcc.Name;
             string accPhone = eachAcc.Phone;
             system.debug('accName ' + accName + ' phone ' + accPhone + ' accountnumber is ' + eachAcc.AccountNumber);
             system.debug('---each acc end---');
    }
}

    public static void Filter(){
        string AccountName = 'Gene Point' ;
        list<account>  listacc = [SELECT name, phone FROM account WHERE name=: accountname];
        list<account>  listacc1 = [SELECT name, phone FROM account WHERE name= 'Gene Point' ];
        list<account>  listacc2 = [SELECT name, phone FROM account WHERE name LIKE '%Point' ];
        system.debug('filter ' + listacc);
        system.debug ('filter 1 ' + listacc1);
 system.debug('filter 2' + listacc2 );  
}

    public static void childToParent_SOQL1() {
        list<contact> listContacts = [select id, name, account.name, account.industry 
        from contact where account.industry = 'energy'];
        for (contact eachContact : listContacts) {
             string accName = eachContact.account.Name;
             system.debug('contact name is ' + eachContact.Name + ', its account name is ' + accName + ' and acc industry is ' + eachContact.account.industry);
        }
 }
 public static void parentToChild_SOQL1() {
    //fetch account and closed won opportunities.
    list<account> listAccount = [select name, type, annualrevenue,
                                  (select name, amount from Opportunities where 
                                  stagename = 'Closed Won') 
                                  from account where type = 'customer - direct'];
 for (account eachAcc : listAccount){
    system.debug('account name is  ' + eachAcc + ', its annual revenue is ' + eachAcc.AnnualRevenue);
system.debug('--------');

    List<Opportunity> eachAccOpp = eachAcc.Opportunities;
    for(Opportunity eachOpp : eachAccOpp) {
        system.debug( 'opp name is  ' + eachOpp.Name + 'and amount' + eachOpp.Amount
        + 'belongs to acc name' + eachAcc.Name);

    }
    system.debug('__________');
 }
  
  system.debug(listAccount);

}
public static void  parentToChild_SOQL2(){
list<salesforce_project__c> listSP = [select id, name, project_name__c,
(select subject__c, priority__c from salesforce_tickets__r) from salesforce_project__c];
//we need to print 2 things
//1. total number of tickets in each project
//2. high prio tickets in each project
for (salesforce_project__c eachSP : listSP){
    //get all tickets in each project in List<salesfoce_ticket__c>
    list<salesforce_ticket__c> listST = eachSP.salesforce_tickets__r;
    //total number of tickets by using (.size) method
    //==> 1st requirement is satitified
    system.debug('list ST' + ListST) ;
    integer totalTickets = listST.size();
    //2. high priority tickets
    integer highPriorityTickets = 0;
    //each ticket and CHECK IF PRIORITY IS HIGH 
    for (salesforce_ticket__c eachST : listST){
        //checkig priority ==high
        if (eachST.priority__c =='High'){
            //increment the counter
            highPriorityTickets++;
        }
    }
    system.debug( 'Project name is ' + eachSP.project_name__c + 
    'total tickets' + totalTickets + ' hp tickets' +  highPriorityTickets);

}
}

}