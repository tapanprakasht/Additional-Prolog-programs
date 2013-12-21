# Program to find whether a number is prime or not
prime(1,1,0):- write('1 is neither prime nor composite').
prime(X,X,R):- S is R+1,
	       S < 3,
	       write('Prime').
prime(M,N,L):- D is M mod N,
	       0 =:= D,
	       F is L+1,
	       F>2,
	       write('Not prime').
prime(M,N,L):- D is M mod N,
	       0 =:= D,
	       K is N+1,
	       F is L+1,
	       F < 3,
	       prime(M,K,F).
prime(M,N,L):- D is M mod N,
	       0 =\= D,
	       K is N+1,
	       prime(M,K,L).
main(A):-      prime(A,1,0).