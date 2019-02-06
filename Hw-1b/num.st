"-------------------------------------------------------"
Magic sub: #Num!

! Num methods !
init
    self n: 0;
         mu: 0;
         m2: 0;
         sd: 0;
         id: id();
         lo: 10^32;
         hi: -1*10^32;
         txt: 'txt';
         w: 1 !
         
nextPutAll:          