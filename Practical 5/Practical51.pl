fib_seq(0,[0]).
fib_seq(1,[0,1]).
fib_seq(N,Seq) :-
N > 1,
fib_seq_(N,SeqR,1,[1,0]), reverse(SeqR,Seq).
fib_seq_(N,Seq,N,Seq). fib_seq_(N,Seq,N0,[B,A|Fs]) :-
N > N0,
N1 is N0+1, C is A+B,
fib_seq_(N,Seq,N1,[C,B,A|Fs]).
