function S = simpson( f, x, n )
m = 2*n;                %calculate number of single panels 'm' from double panels 'n'
h = (x(2)-x(1))/(m);    %calculate size of panels denoted 'h' using number of single panels
S = f(x(1)) + f(x(2));  %calculates the sum of the function at the start and end of the interval  
  
for i = 1:2:m   %for loop iterates through all the odd number panels 
    %add the sum of the function at the start and end of interval to all the
    %odd number single panels, multipled by 4, from 1 to the total number of single panels 'm'
    S = S + 4*f(x(1)+i*h);
end

for i = 2:2:m-1   %for loop iterates through all the even number panels
    %add the above summation to all the even number panels, multiplied by 2,
    %from 2 to the last even panel 
    S = S + 2*f(x(1)+i*h);
end

%times the whole summation by 3 to output the Simpson approximation
S = (h/3) * S;