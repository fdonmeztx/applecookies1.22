public  class Datetime_Assignment {
    public void diffofDate() {
        Date varTomorrowDate = date.newInstance(2023, 1, 26);
        Date varTodaysDate = date.newInstance(2023, 1, 25);
        integer daysdiff = varTomorrowDate.daysBetween(varTodaysDate);
        system.debug('no of days between' + varTodaysDate + 'and ' + 
        varTomorrowDate + 'is ' + daysdiff + 'days.');
        Date newtry = varTodaysDate.addDays(5);
        System.debug( '5 days later the diff is  : ' + newtry);
    }
    public void Timecheck(){
        Datetime varTomorrowDatetime = datetime.newInstance(2023, 
        1, 06, 7, 00, 00);
        Datetime var10DaysDatetime = datetime.newInstanceGmt(2023,
         1, 16, 9, 00, 00);
         Long varDatetimeLong = 12339874361L;
         Datetime dt = datetime.newInstance(varDatetimeLong);
         system.debug('Date time of ' + varDatetimeLong + 'second is' + dt);

         Datetime varTomorrowDatetime2 = varTomorrowDatetime.addDays(7);
         system.debug( '7 days after ' + varTomorrowDatetime + ' is ' + 
         varTomorrowDatetime2);
         
         Datetime var10DaysDatetime2 = var10DaysDatetime.addDays(10);
         system.debug('10 dyas after' + var10DaysDatetime + 'is ' + var10DaysDatetime2);

            
        }

    }
