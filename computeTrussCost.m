function [ cost ] = computeTrussCost( C, D )
    cost = 0;
    [ j, ~ ] = size(C);
    cost = cost + 10*j + sum(D);
end
