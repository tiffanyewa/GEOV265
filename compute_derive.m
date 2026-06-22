
function deriv = compute_derive(x,f);

    n = length(x);

    deriv = zeros(1,n);

    for i = 1:n-1

    deriv(i) = (f(i+1) - f(i))/ (x(i+1)-x(i));
    
    end

    % for the last n (31) in the array 

    deriv(n) = (f(n) - f(n-1))/ (x(n)-x(n-1));
end 
   