% calculate the area of different shapes: circle, rectangle, and triangle.

% area of a circle
area(circle(Radius), Area) :-
    Area is 3.14159 * Radius * Radius.

% area of a rectangle
area(rectangle(Width, Height), Area) :-
    Area is Width * Height.

% area of a triangle
area(triangle(Base, Height), Area) :-
    Area is 0.5 * Base * Height.

% The predicate is not reversible. We cannot give the program an area to produce a shape. 
% Prolog cannot solve for the shape or dimensions of the shape based on the area alone.
% Arithmetic operations are not inverses.
% An area is also not unique to be used for producing a shape.
% There is also a lack of constraint-solving in Prolog.
