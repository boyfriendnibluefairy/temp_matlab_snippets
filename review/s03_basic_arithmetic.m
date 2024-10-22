
% Arithmetic addition between 2 variables works when the two variables
% have the same sizes
x = [ 1 2 3 ; 4 5 6 ];
y = [ 1 1 1 ; 1 1 1 ];
% x + y
% x - y

% Matrix operation is done when rows of first variable is equal to the
% columns of the second variable. If variables have the same size, you can
% transpose the other.
a = [ 2 2 ; 2 2 ; 3 3 ];
% x*a
% x * y'

% For elementwise multiplication, use .*
% x.*x

% 1x1 exponentation
b = 3
% b^2

% For elementwise exponentation, use .^
a.^2