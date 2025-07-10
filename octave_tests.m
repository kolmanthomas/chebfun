% A container for Octave tests
% As we try to port Chebfun to Octave, let's keep track of what works.
% Eventually we have a goal to run the whole Chebfun test suite but small steps first.

%!test
%! % make a chebfun
%! x = chebfun('x');
%! assert (isa(x, 'chebfun'))

%!test
%! f = chebfun('x', [-2 2]);
%! assert (isequal (f.domain, [-2 2]))

%!test
%! f = chebfun('x + x', [-5 5]);
%! assert (isequal (f.pointValues, [-10;10]))

%!test
%! f = chebfun('2*x + 3', [-1 1]);
%! assert (isequal (f(1), 5))
%! assert (isequal (f(0), 3))

%!test
%! f = chebfun('x/3 + 4', [-10 10]);
%! assert (isequal (f(0), 4))
%! assert (isequal (f(3), 5))

%!test
%! f = chebfun('sin(x)', [0 pi]);
%! area = integral(f);
%! assert (area, 2, -2*eps)
%assert (abs(area - 2) <= 4*eps)

%!test
%! f = chebfun('sin(x) + 2', [0 pi]);
%! area = integral(f);
%! assert (area, 8.283185307179588, -2*eps)

%!test
%! f = chebfun('sin(cos(2*x + 2))', [0 pi]);
%! area = integral(f);
%! assert (area, 0, -2*eps)

%!test
%! x = chebfun('x');
%! f = x*2;

%!test
%! x = chebfun('x');
%! f = 2*x;

%!test
%! % Chebfun construction of polynomial 
%! f = chebfun('x^2');

%% Discontinuous chebfun construction
%!test
%! f = chebfun('abs(x)', 'splitting', 'on');
%! d = domain(f);
%! assert (d(1) == -1)
%! assert (d(2) < 1e-15)
%! assert (d(3) == 1)


%% Bessel function construction
%!test
%! f = chebfun('abs(besselj(0, x))', [0 20], 'splitting', 'on');

% ===========================================
% Chebfun guide: Getting Started with Chebfun
% ===========================================

%!xtest
%! % Creating a chebfun for a piecewise smooth function
%! f = chebfun('abs(x-.3)', 'splitting', 'on');


% ==============================================
% Chebfun guide: Integration and Differentiation
% ==============================================
