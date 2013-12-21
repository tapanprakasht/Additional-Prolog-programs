# Program to find prime factor of number
prime(Z,Z,R):- S is R+1,
               S < 3,
	       write(Z).
prime(M,N,L):- H is M mod N,
	       0 =:= H,
	       F is L+1,
	       F>2.
	      
prime(M,N,L):- H is M mod N,
	       0 =:= H,
	       K is N+1,
	       F is L+1,
	       F < 3,
	       prime(M,K,F).
prime(M,N,L):- H is M mod N,
	       0 =\= H,
	       K is N+1,
	       prime(M,K,L).
	       
	       
factor(X,X).   
factor(A,B):-    0 =\= A mod B,
		 D is B+1,
		 factor(A,D).
factor(A,B):-    0 =:= A mod B,
		 prime(B,1,0),
		 write(' '),
		 D is B+1,
		 factor(A,D).
		 

	       
main(A):- write('Prime Factors are '),
          write(' '),
	  factor(A,2).
	  
