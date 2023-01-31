List<string> listStr = new List<String>();
listStr.add('sounds good');
listStr.add('ok');
listStr.add('method');
listStr.add('clear');
listStr.add('@');
listStr.add('🙌');

string concateStr = '';
//left side -> defining new variabla, which we can use inside for loop
//right side-> list variabla name
//new variabla (eachStr), will auto get one by one value from the list
for(string eachStr :listStr){
    system.debug(eachStr);
    concateStr += ' || ' + eachStr;
    system.debug(concateStr); 
}
