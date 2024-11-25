# Some small Prolog programs

* area.pl: computes the area of circle, rectangle, or triangle in Prolog.
* grade.pl: predicates representing student names and grades. A student has a good grade if they have an A or a B.
* sum_pairs.pl: sum_pairs/2:  The first parameter is a “input list”. The second parameter is related to the first such that the first element is the sum of the first two elements,
  the second element of the resulting list is the sum of the 3rd and 4th elements of the input, and so on. If there is an odd number of elements, the last element remains unchanged.
  The empty list is related to the empty list. As an example, sum_pairs([1,2,3,4,5], [3,7,5]) is true.
* count_by_cat.pl: count_by_cat/3: The first parameter is a nested list as above.
  The second parameter is the sum of the values associated with 0 keys. The third parameter
  is the sum of the values associated 1 keys. If there is no pair corresponding to a particular key,
  then the sum is zero.
