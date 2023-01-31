public  class ListDemo {
   public static string candidatesList(integer i){
    //List
    //datatype
    list<string> listCandidates = new list<string>();
    //can add only string to the list.no other data type
    listCandidates.add('Marc');
    listCandidates.add('Elon');
    listCandidates.add('Bill');
    listCandidates.add('Marc');
    system.debug('candidates list is' +listCandidates);

   string candidate = '';
   if (i >0 && i < listCandidates.size()){
    candidate = listCandidates[i];
   } else{
    candidate = 'No such candidate. ' ;

   }
   return candidate;
    }

    public static void randomIntegerList(){
       List<integer> listInteger = new List<integer>();
       listInteger.add(10); //index= 0
       listInteger.add(15); //index= 1
       listInteger.add(21); //index= 2
       listInteger.add(15); //index= 3
       listInteger.add(15); //index= 4
       system.debug('list of random integer is ' 
       + listInteger);

       //get value at index 3
       integer index3value = listInteger.get(3);
      
       integer index3value2 = listInteger[3];

       system.debug('value at index 3 ' + index3value);
       system.debug('value at index 3, again ' + index3value2);
    }
}