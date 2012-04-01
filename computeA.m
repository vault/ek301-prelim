function [ A ] = computeA( C, X, Y, Sx, Sy )
% computes the A matrix for solving a truss
    
    [j, m] = size(C);
    A = zeros(2*j, m+3);
    for row = 1:j 
        for col = 1:m
            if C(row,col)
                p = findother(C(:,col), row);
                p1 = [X(row), Y(row)];
                p2 = [X(p), Y(p)];
                d = distance(p1, p2);
                A(row,col) = (X(p) - X(row))/d;
                A(row+j,col) = (Y(p) - Y(row))/d;
            end
        end
    end
    A(1:j,m+1:m+3)=Sx;
    A(j+1:2*j,m+1:m+3)=Sy;
end

function [ p ] = findother(col, row)
    p = 0;
    for i = 1:length(col)
        if col(i) && i ~= row
            p = i;
        end
    end
end

function [ d ] = distance( p1, p2 )
    d = sqrt((p1(1)-p2(1))^2 + (p1(2)-p2(2))^2);
end