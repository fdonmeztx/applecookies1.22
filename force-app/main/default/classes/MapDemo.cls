public class MapDemo {
    public static string  retrieveMonth(integer m){
    string month = '' ;
    map<integer,string> mapmonth = new map<integer, string>();
    mapmonth.put(1, 'January ');
    mapmonth.put(2, 'February ');
    mapmonth.put(3, 'March ');
    mapmonth.put(4, 'April ');

    mapmonth.put(5, 'MAy ');
    mapmonth.put(6, 'June ');
    mapmonth.put(7, 'July ');
    mapmonth.put(8, 'August ');

    mapmonth.put(9, 'Sptember ');
    mapmonth.put(10, 'October ');
    mapmonth.put(11, 'November ');
    mapmonth.put(12 ,'December ');
    
    if (mapmonth .containskey(m)){
        month= mapmonth.get(m);
    } else{
        month ='No such month exist, fix your feed';

    }

    return month;

    }
}