# Program to find the factors of a number
factor(X,X):-    write(X).
factor(A,B):-    0 =\= A mod B,
		 D is B+1,
		 factor(A,D).
factor(A,B):-    0 =:= A mod B,
		 write(B),
		 write(' '),
		 D is B+1,
		 factor(A,D).
		 

main(A):- write('Factors are '),
          write(' '),
	  factor(A,1).
	  
