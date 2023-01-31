public  class DatetimeMethodDemo {
    public void calculatedAgeInMonths(){
        date birthDate = date.newInstance(1990, 10, 9);
        date todayDate = date.today();

        integer ageInMonths = birthDate.monthsBetween(todayDate);
        system.debug ('Vitap age in months => ' + ageInMonths);

        integer ageInDays = birthDate.daysBetween(todayDate);
        system.debug('Vitap age in days => ' + ageInDays);
    }

    public void printSubscriptionEndDate() {
        date subStartDate = date.today();
        date subEndDate = subStartDate.addDays(1000);
        system.debug('subs end date is ' + subEndDate );
        
        integer endYear = subEndDate.year();
        integer endMonth = subEndDate.month();
        system.debug('end year is ' + endYear);
        system.debug( 'end month is ' + endMonth);
    }
}