function [x,itCount] = bisect_cosmx( a, b)
% [x,itCount] = bisect_cosmx( a, b) uses bisection to find a
% root of cosmx between a and b to tolerance of 1.0e-10
% a=left end point of interval
% b=right end point of interval
% cosmx(a) and cosmx(b) should be of opposite signs
% x is the approximate root found
% itCount is the number of iterations required.
% Orkhan Ashrafov, Murathan Bilgen, Hüseyin Eren Demirtaş & Ali Valiyev and
% the date is 04.01.2022
EPSILON = 1.0e-10;
fa = cosmx(a);
fb = cosmx(b);

if fa * fb > 0
    error('bisect_cosmx failed with finding roots!')

elseif fa == 0
        disp(strcat('The root is' , num2str(a)))

elseif fb == 0
        disp(strcat('The root is' , num2str(b)))

else
    for itCount = 1:round(log((b-a)/EPSILON)/log(2)) + 1 % fill in using the formula from Exercise 3
        x = (b+a)/2;
        fx = cosmx(x);
        % The following statement prints the progress of the algorithm
        disp(strcat( 'a=' , num2str(a), ', fa=' , num2str(fa), ...
        ', x=' , num2str(x), ', fx=' , num2str(fx), ...
        ', b=' , num2str(b), ', fb=' , num2str(fb)))
        if ( fx == 0 )
            return; % found the solution exactly!
        elseif ( abs ( b - x ) < EPSILON )
            return; % satisfied the convergence criterion
        end
        if ( sign(fa) * sign(fx) <= 0 )
            b = x;
            fb = fx;
        else
            a = x;
            fa = fx;
        end
    end
end