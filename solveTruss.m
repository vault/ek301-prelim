function [ T ] = solveTruss( C, Sx, Sy, X, Y, L )
    A = computeA(C, X, Y, Sx, Sy);
    T = A\(-L);
end