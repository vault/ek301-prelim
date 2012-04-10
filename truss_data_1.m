% EK301, Section A1, Group 7, 4/09/12
% Michael Abed, ID U55178419
% Joseph Stone, ID U44434740
% Ben Havey, ID 

% sample problem truss

C = [
    1 1 0 0 0 0 0 0 0 0 0 0 0
    1 0 1 1 0 0 0 0 0 0 0 0 0
    0 0 0 1 1 1 0 0 0 0 0 0 0
    0 1 1 0 1 0 1 1 0 0 0 0 0
    0 0 0 0 0 1 1 0 1 1 0 0 0
    0 0 0 0 0 0 0 1 1 0 1 1 0
    0 0 0 0 0 0 0 0 0 1 1 0 1
    0 0 0 0 0 0 0 0 0 0 0 1 1
];

Sy = zeros(8,3); Sy(1,2)=1; Sy(8,3)=1;
Sx = zeros(8,3); Sx(1,1)=1;

X = [0 0 4 4 8 8 12 12];
Y = [0 4 8 4 8 4  4  0];

L = zeros(16,1); L(8+4)=-25;

