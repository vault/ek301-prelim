% EK301, Section A1, Group 7, 4/09/12
% Michael Abed, ID U55178419
% Joseph Stone, ID U44434740
% Ben Havey, ID U46525972

% pratt truss

C = [
	1 1 0 0 0 0 0 0 0 0 0 0
	1 0 1 0 0 0 0 0 0 0 0 0
	0 1 1 0 0 0 0 0 0 0 0 0
	0 0 1 1 0 0 0 0 0 0 0 0
	0 1 0 1 0 0 0 0 0 0 0 0
	0 1 0 0 1 0 0 0 0 0 0 0
	0 0 0 1 1 0 0 0 0 0 0 0
	0 0 0 1 0 0 1 0 0 0 0 0
	0 0 0 0 1 0 1 0 0 0 0 0
	0 0 0 0 1 1 0 0 0 0 0 0
	0 0 0 0 0 1 1 0 0 0 0 0
	0 0 0 0 0 0 1 1 0 0 0 0
	0 0 0 0 0 0 1 0 1 0 0 0
	0 0 0 0 0 1 0 0 1 0 0 0
	0 0 0 0 0 0 0 1 1 0 0 0
	0 0 0 0 0 0 0 1 0 0 1 0
	0 0 0 0 0 0 0 1 0 1 0 0
	0 0 0 0 0 0 0 0 1 1 0 0
	0 0 0 0 0 0 0 0 0 1 1 0
	0 0 0 0 0 0 0 0 0 0 1 1
	0 0 0 0 0 0 0 0 0 1 0 1
]';

Sy = zeros(12,3); Sy(1,2) = 1; Sy(12,3)=1; 
Sx = zeros(12,3); Sx(1,1) = 1;

X = [0 8 8 16 16 24 24 32 32 40 40 48];
Y = [0 8 0 0 8 8 0 0 8 8 0 0];

L = zeros(24,1); L(12+7) = -3.92;
