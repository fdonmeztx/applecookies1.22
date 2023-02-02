public class allCats{
//parameter lass
//2nd BRANCH



 public static void   allCats2() {
 List<cat> cats = new List<cat>();
 
 cat c2 = new cat('fluffy', 'white');
 cat c1 = new cat ('tekir' , 'balck');
 cat sfcat = new Cat();

 cats.add(c1);
 cats.add(c2);
 cats.add(sfcat);
 system.debug('all cats' + cats);
}
}
    public string name;
    
    public string color;
    //constructor name is  same as class name
//it doesn't return anything
//we use constructor if we want to execute
// apex code asa new instance .........

public Cats(){
    system.debug('cat constructor called.');
system.debug(' name ' + name + ' color ' + color);
  
}
public Cats(string n, string clr){
    name = n;
    color = clr;
    sleeping();
}
  

}
