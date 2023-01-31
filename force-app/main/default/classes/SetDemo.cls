public  class SetDemo {
    public static void citySet() {
        
        Set<String> cities= new Set<String>{'Tokyo','BERLIN',
        'Nairobi','Lisbo','BERLIN','Tokyo','Berlin'};
        
        system.debug('set of cities ' + cities);

    

}


public static void randemIntegerSet(){

    Set<Integer> setInteger= new Set<Integer>();
    setInteger.add(10);
    setInteger.add(15);
    setInteger.add(21);
    setInteger.add(15);
    setInteger.add(15);
    system.debug( setInteger);

}
//create a method , whihc accept a list<integer> and
// it returns set<integer>

public static Set<Integer> setFromList(List<Integer> intList){
    //create new empty set
    Set<Integer> returnSet = new Set<Integer>();
    //add all the elements of a list using .addAll(lisoset) method
    returnSet.addAll(intList);
    //return the newly created set.
    return returnSet;
}

//creating a method , which accepts set<string>.
//return?
//set<string> by converting each element of the given aet to UPPERCASE

public static set<string> uppercaseSet (Set<String> setStr){
    //create a temp set in whihc we will add uppercase elements
    Set<String> upprSet = new Set<String>();
system.debug('setStr => ' + setStr);

    //for each loop on setStr(passed in parameter)

    for (string eachStr : setStr) {
        system.debug('each str isss ' +eachStr);
        string tempst = eachStr.toUpperCase();
        upprSet.add(tempst);        
    }
    return upprSet;
}
}