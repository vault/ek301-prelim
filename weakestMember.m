function [ idx ] = weakestMember(D, T)
    unit = T(1:length(T)-3)/norm(T(1:length(T)-3));
    resist = breaking(D);
    p = unit ./ resist;
    p(p > 0) = 0;

    a = 1:length(D);
    [~,i] = max(abs(p));
    idx = a(i);
end

function [ F ] = breaking(L)
    F = 369.9 ./ (abs(L) .^ 1.465);
end