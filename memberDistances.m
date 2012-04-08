function [ D ] = memberDistances(C, X, Y)
    [ ~, m] = size(C);
    D = zeros(m,1);
    for i = 1:m
        memb = C(:,i);
        points = [X(memb == 1); Y(memb == 1)];
        D(i) = dist(points(:,1), points(:,2));
    end

end


function [ d ] = dist(p1, p2)
    d = sqrt((p1(1)-p2(1))^2+(p1(2)-p2(2))^2);
end