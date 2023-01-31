public class String_Assignment {
    
    public void stass() {
        string LocalString = 'Thanks for the session on the string';
        Integer LocalStringlength = LocalString.length();
        system.debug('local string length' + LocalStringlength);
        String LocalStringUpper = LocalString.toLowerCase();
        system.debug('upper case' + LocalStringUpper);
        Boolean Localstringcheck1 = LocalString.contains('session');
        system.debug('LocalString has session; ' + Localstringcheck1);
        Boolean Localstringcheck2 = LocalString.contains('sessions');
        system.debug('LocalString has sessions; ' + Localstringcheck2);
        Boolean Localstringcheck3 = LocalString.contains('SESSION');
        system.debug('Local string has SESSION; ' + Localstringcheck3);






    }
}