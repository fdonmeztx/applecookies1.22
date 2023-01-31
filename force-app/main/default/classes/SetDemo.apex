SetDemo.randemIntegerSet();

SetDemo.citySet();
 Set<String> cities= new Set<String>();
        cities.add('Tokyo');
        cities.add('Nairobi');
        cities.add('Lisbo');
        cities.add ('Berlin');
       cities.add('Tokyo');
        cities.add('BERLIN');
       Set<String> capCities= SetDemo.uppercaseSet(cities);
system.debug('cities in capital ' + capCities); 

List<Integer> l1 = new List<Integer>();
l1.add(10);
l1.add(15);
l1.add(21);
l1.add(15);
Set<Integer> setInt = SetDemo.setFromList(l1);
system.debug('l1 list ' + l1);
system.debug('set from list' + setInt);


