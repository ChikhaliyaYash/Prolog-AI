father(jack, susan).                             /* Fact  1 */  
father(jack, ray).                               /* Fact  2 */
father(david, liza).                             /* Fact  3 */
father(david, john).                             /* Fact  4 */
father(john, peter).                             /* Fact  5 */
father(john, mary).                              /* Fact  6 */
mother(karen, susan).                            /* Fact  7 */
mother(karen, ray).                              /* Fact  8 */
mother(amy, liza).                               /* Fact  9 */
mother(amy, john).                               /* Fact 10 */
mother(susan, peter).                            /* Fact 11 */
mother(susan, mary).                             /* Fact 12 */
parent(X, Y) :- father(X, Y).                    /* Rule  1 */
parent(X, Y) :- mother(X, Y).                    /* Rule  2 */
grandfather(X, Y) :- father(X, Z), parent(Z, Y). /* Rule  3 */
grandmother(X, Y) :- mother(X, Z), parent(Z, Y). /* Rule  4 */
grandparent(X, Y) :- parent(X, Z), parent(Z, Y). /* Rule  5 */
yeye(X, Y) :- father(X, Z), father(Z, Y).        /* Rule  6 */
mama(X, Y) :- mother(X, Z), father(Z, Y).        /* Rule  7 */
gunggung(X, Y) :- father(X, Z), mother(Z, Y).    /* Rule  8 */
popo(X, Y) :- mother(X, Z), mother(Z, Y).     
