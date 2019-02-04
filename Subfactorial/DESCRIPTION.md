Most everyone who programs is familiar with the factorial - n! - of a number, the product of the series from n to 1. One interesting aspect of the factorial operation is that it's also the number of permutations of a set of n objects.

Today we'll look at the subfactorial, defined as the derangement of a set of n objects, or a permutation of the elements of a set, such that no element appears in its original position. We denote it as !n.

Some basic definitions:

(1)    !1 -> 0 because you always have {1}, meaning 1 is always in it's position.

(2)    !2 -> 1 because you have {2,1}.

(3)    !3 -> 2 because you have {2,3,1} and {3,1,2}.

And so forth.

Today's challenge is to write a subfactorial program. Given an input n, can your program calculate the correct value for n?
