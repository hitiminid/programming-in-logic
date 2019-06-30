prime(LO,HI,N) :- between(LO,HI,N), isprime(N).
isprime(X) :- \+ (B is floor(sqrt(X)),between(2,B,A),(0 is mod(X,A))).
