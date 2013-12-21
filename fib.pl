# Program to print the fibonnaci series
fib(X,Q,Z,X).
fib(N,A,B,L):- write(A),
	     write(' '),
	     C is A+B,
	     M is B,
	     R is C,
	     K is L+1,
	     fib(N,M,R,K).
main(N):- fib(N,0,1,0).