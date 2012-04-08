function [ cost ] = computeTrussCost( C, X, Y )
    cost = 0;
    [ j, m ] = size(C);
    cost = cost + 10*j;
    for i = 1:m
        memb = C(:,i);
        points = [X(memb == 1); Y(memb == 1)];
        d = dist(points(:,1), points(:,2));
        cost = cost + d;
    end
end

function [ d ] = dist(p1, p2)
    d = sqrt((p1(1)-p2(1))^2+(p1(2)-p2(2))^2);
end