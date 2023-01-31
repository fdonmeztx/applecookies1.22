Candidates2.companyName = 'softinnovas';

system.debug('0. number of candidates: ' 
+ Candidates2.countCandidates);

Candidates2 c1 = new Candidates2();
c1.name = 'Jerry';
c1.gender = 'Male';
c1.printCandidate();
system.debug('1. number of candidates: ' +
 Candidates2.countCandidates);

 Candidates2 c2 = new Candidates2 ();
 c2.name = 'Elaine';
 c2.gender = 'Female';
 c2.printCandidate();
 system.debug('2. number of candidates : ' +
 Candidates2.countCandidates);

 Candidates2.companyName = 'Vandeley Insdustry';

 Candidates2 c3 = new Candidates2();
 c3.name = 'George';
 c3.gender = 'Male';
 c3.printCandidate();
 system.debug('3. number of candidates: ' +
 Candidates2.countCandidates);

 c1.printCandidate();
 c2.printCandidate();

 Candidates2.printCompany();



