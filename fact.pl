# Program to print factorial of a number
fact(0,X,X).
fact(0,1,L).
fact(A,B,C) :- D is A-1,
               E is B*A,
	       fact(D,E,C).
main(K):- fact(K,1,C),
          write(C).
