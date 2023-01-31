public  class Collection_Assignment {
    public  void listMethods(){
        list<string> days = new list<string>();
        days.add('Monday');
        days.add('Tuesday');
        days.add('Wednesday');
        days.add('Thursday');
        days.add('Friday');
        days.add('Saturday');
        days.add('Sunday');
       system.debug('days of the weeks are ' + days);

    }  
public  void setMethods(){
    list<string> days = new list<string>();
    days.add('Monday');
        days.add('Tuesday');
        days.add('Wednesday');
        days.add('Thursday');
        days.add('Friday');
        days.add('Saturday');
        days.add('Sunday');
Set<String> weekdays = new Set<string>(days);
system.debug(' from list to set , the days are ' + weekdays);
    
}
}
   
   
