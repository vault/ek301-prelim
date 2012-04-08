
filename = input('Input truss data-file name: ', 's');

run(filename);

forces = solveTruss(C, Sx, Sy, X, Y, L);
forces(abs(forces) < 0.00001) = 0;
[j, m] = size(C);

Ln = L(L~=0);
for i = 1:length(Ln)
    
    fprintf('Load: %.3f N\n', abs(Ln(i)));
end
fprintf('Member forces in Newtons:\n');
for i = 1:m
    printForce(forces, i);
end
fprintf('Reaction forces in Newtons\n');
for i = 1:length(forces)-m
    fprintf('r%d: %.3f\n', i, forces(m+i));
end

cost = computeTrussCost(C, X, Y);
fprintf('Cost of truss: $%d\n', round(cost));

fprintf('Theoretical max load/cost ratio in N/$: %.4f\n', abs(sum(L))/cost);