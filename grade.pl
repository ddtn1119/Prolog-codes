% Andy Nguyen
% CS 4337.502
% Homework 5 Problem 8

% 8a. List of facts representing grades of students:
grade(alice, a).
grade(brian, b).
grade(carrie, c).
grade(david, a).
grade(erica, b).
grade(frank, d).
grade(gina, d).
grade(harry, f).

% 8b. Predicate to check if a student has a good grade (A or B):
% should return Alice, Brian, David, and Erica.
good_grade(Student) :-
    grade(Student, a);
    grade(Student, b).

% "Who is a good student" query: ?- good_grade(Student).

% 8c. Predicate to check for the existence of a student with an "F" (failing) grade:
exist_fail :-
    grade(_, f), !.

% 8d. Predicate to check for the existence of a student with "A" or "B" grades:
% declare them as the best student
best_student(Student) :-
    grade(Student, a), !.

best_student(Student) :-
    grade(Student, b).