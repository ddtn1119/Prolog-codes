% base case: empty list
sum_pairs([], []).
% if the list has only one element, return that element
sum_pairs([Element], Element).

% a helper predicate to process the input list in pairs
sum_pairs_processor([], Acc, Acc). % end of list
sum_pairs_processor([X], Acc, Result) :-
    append(Acc, [X], Result). % odd element case: leave the last element alone.
sum_pairs_processor([X, Y | Tail], Acc, Result) :-
    Sum is X + Y, % sum the first two elements.
    append(Acc, [Sum], NewAcc), % add sum to the accumulator
    sum_pairs_processor(Tail, NewAcc, Result). % process the rest of the list.

% main predicate
sum_pairs(Input, Output) :-
    sum_pairs_processor(Input, [], Output).
