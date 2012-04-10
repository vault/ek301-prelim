% EK301, Section A1, Group 7, The GNUs
% Michael Abed ID U55178419 
% Joseph Stone ID U44434740
% Ben Havey ID U46525972

% main truss solver program

filename = input('Input truss data-file name: ', 's');

run(filename);

forces = solveTruss(C, Sx, Sy, X, Y, L);
forces(abs(forces) < 0.00001) = 0;
[j, m] = size(C);

Ln = L(L~=0);

D = memberDistances(C, X, Y);

cost = computeTrussCost(C,D);
weakest = weakestMember(D,forces);
ml = maxLoad(forces,L,D,weakest,false);

printHeader();
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

fprintf('Cost of truss: $%d\n', round(cost));
fprintf('Theoretical max load is %.4f\n', ml);
fprintf('Theoretical max load/cost ratio in N/$: %.4f\n', ml/cost);
fprintf('First member to  break is member %d\n', weakest);
fprintf('The buclking force is %.3f N\n' , bucklingStrength(D(weakest)));

weak = maxLoad(forces,L,D,weakest,true);

fprintf('Worst possible buckling strength is %.3f N\n', weak);
fprintf('Theoretical worst load/cost ratio: %.4f\n', weak/cost);