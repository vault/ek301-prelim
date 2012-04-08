function [ ] = printForce( forces, idx )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    
    f = abs(forces(idx));
    s = sign(forces(idx));
    fprintf('m%d: %.3f ', idx, f);
    if s < 0
        fprintf('(C)\n');
    elseif s > 0
        fprintf('(T)\n');
    else
        fprintf('\n');
    end

end

