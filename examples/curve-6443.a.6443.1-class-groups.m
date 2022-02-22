SetVerbose("ClassGroup", 3);
R<x> := PolynomialRing(Rationals());
K := NumberField(R![406, 1238, -2616, -4556, 10176, -2687, -4167, 2625, -1676, 2375, -1337, 267, -60, 15, -3, 1]); K;
C := ClassGroup(K : Proof := "Full"); C;
assert #C eq 2;
printf "Verified class number of %o is %o.\n\n", K, #C;
exit;