"-------------------------------------------------------"
Magic sub: #Num has: 'n mu m2 sd lo hi txt w'

! Num methods !
init
    self n: 0;
         mu: 0;
         m2: 0;
         sd: 0;
         lo: 10 raisedTo: 32;
         hi: -1*10 raisedTo: 32;
         txt: 'txt';
         w: 1 !

numInc: x
    (x == nil)
        ifTrue: ^x.
    n = n +1.
    d = x - mu.
    mu = mu + d/n.
    m2 = m2 + d*(x - mu).
    (x > hi )
        ifTrue: hi = x.
    (x < lo )
        ifTrue: lo = x.
    (n >= 2)
        ifTrue: sd = (m2/(n-1+10^-32))^0.5.
    ^x !
!!