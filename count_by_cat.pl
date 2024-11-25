% helper predicate with accumulators for sumkey0 and sumkey1
% unify results at the end of the list
count_by_cat_helper([], Sum0, Sum1, Sum0, Sum1).
% add value to the accumulator for key 0
count_by_cat_helper([pair(0, Value) | Tail], Acc0, Acc1, Sum0, Sum1) :-
    NewAcc0 is Acc0 + Value,
    count_by_cat_helper(Tail, NewAcc0, Acc1, Sum0, Sum1).
% add value to the accumulator for key 1
count_by_cat_helper([pair(1, Value) | Tail], Acc0, Acc1, Sum0, Sum1) :-
    NewAcc1 is Acc1 + Value,
    count_by_cat_helper(Tail, Acc0, NewAcc1, Sum0, Sum1).

% for other cases, ignore pairs with keys other than 0 or 1.
count_by_cat_helper([pair(_, _) | Tail], Acc0, Acc1, Sum0, Sum1) :-
    count_by_cat_helper(Tail, Acc0, Acc1, Sum0, Sum1).
    
% main predicate
count_by_cat(Pairs, Sum0, Sum1) :-
    count_by_cat_helper(Pairs, 0, 0, Sum0, Sum1).

% to test the program:
% ?- count_by_cat([pair(0, 1), pair(1, 2), pair(1, 3), pair(0, 4), pair(0, 3)], Sum0, Sum1).
