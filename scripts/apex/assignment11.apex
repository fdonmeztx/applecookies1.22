map<string, integer> markObtainInMaths = new Map<string, integer>();

markObtainInMaths.put('0111CE112',  40);
markObtainInMaths.put('0111CE102',  19);
markObtainInMaths.put('0111CE100' ,  33);
markObtainInMaths.put('0111CE098' , 40);
system.debug(markObtainInMaths);

system.debug('Roll Numbers are' + markObtainInMaths.keySet());
system.debug('Mark Obtain list is' + markObtainInMaths.values());


list<integer> markObtains = markObtainInMaths.values();
system.debug(' Mark Obtain list is  '+ markObtains);
set<string> rollNumbers = markObtainInMaths.keySet();
system.debug(rollNumbers);

for (string rollNNumber : rollNumbers){
    if(markObtainInMaths.get(rollNNumber) < 20){
        system.debug(rollNNumber + '  will not get you to the next level');
    }
}
