function [ m ] = maxLoad(T, L, D, idx, weak)
    L1 = abs(L(L ~= 0));
    T1 = abs(T(idx));
    ml = D(idx);
    B = breaking(ml);
    if weak
        B = B - 1.0837;
    end
    ratio = T1/B;
    m = L1 / ratio;
end

function [ F ] = breaking(L)
    F = 369.9./(abs(L).^1.465);
end