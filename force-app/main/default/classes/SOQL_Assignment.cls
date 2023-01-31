public  class SOQL_Assignment {
    public static void soql_WhereCaluse(){
        List<Contact> lstcontact =[SELECT name,phone
         FROM Contact WHERE name LIKE 'A%'];
         system.debug(lstcontact);
  

    }
    public static void soql_FromMethod(){
        list<Contact> lstcontact= [select phone, lastname 
         from contact limit 10];
        //for each loop on the list.
            for (contact eachcntc  : lstcontact) {
        
                string contLName = eachcntc .LastName;
                string contLPhone = eachcntc .Phone;
                system.debug('contact lastname is ; ' + contLName );
                system.debug( ' phone number is ; ' + contLPhone );
               
}
    }
}