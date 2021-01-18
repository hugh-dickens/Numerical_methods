function S = romberg (f,x,n)

%call the Simpson function already written with the size of the panel being 'h'
simp  = simpson (f,x,n);

%call the Simpson function with the size of the panel being 'h/2' i.e.
%double the number of panels
simp_h2 = simpson(f,x,2*n);

%Calculate the Romberg R3 integration method by linearly combining S(h) and
%S(h/2) according to the equation for the algorithm
S = ((16*simp_h2) - simp) / (15);