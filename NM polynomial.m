clc;
%clear all;
syms x y;
P = input('Enter a polynomial with two variables x and y: ');
Dx = simplify(x*diff(P,x));
Dy = simplify(y*diff(P,y));
M1 = simplify(Dx + Dy);
Z1 = subs(M1, [x,y], [1,1]);
disp(['The first Zagreb index is: ', char(expand(M1))]);
disp([' Z1(G) = ' char(Z1)]);


%Dy = simplify(y*diff(P,y));
DxDy = simplify(x*diff(Dy,x));
Z2 = subs(DxDy, [x,y], [1,1]);
disp(['The second Zagreb index is: ', char(expand(DxDy))]);
disp([' Z2(G) = ' char(Z2)]);


Sy = simplify(int(P/y, y));
SxSy = simplify(int(Sy/x, x));
mM2 = subs(SxSy, [x,y], [1,1]);
disp(['The second modified Zagreb index is: ', char(expand(SxSy))]);
disp([' mM2(G) = ' char(mM2)]);

DyM1 = simplify(y*diff(M1,y));
RezG = simplify(x*diff(DyM1,x));
RezG3 = subs(RezG, [x,y], [1,1]);
disp(['The RezG3 index is: ', char(expand(RezG))]);
disp([' RezG3 = ' char(RezG3)]);

G = subs(P, y, x);
Q = int(G/x, x);
Harmonic = simplify(2*Q);
H = subs(Harmonic, [x,y], [1,1]);
disp(['The Harmonic index is: ', char(expand(Harmonic))]);
disp([' H(G) = ' char(H)]);

D2x = simplify(x*diff(Dx,x));
D2y = simplify(y*diff(Dy,y));
Forgotten = simplify(D2x + D2y);
F = subs(Forgotten, [x,y], [1,1]);
disp(['The Forgotten index is: ', char(expand(Forgotten))]);
disp([' F(G) = ' char(F)]);

DxSy = simplify(x*diff(Sy,x));
SxDy = simplify(int(Dy/x, x));
SDD1 = simplify(DxSy + SxDy); 
SDD = subs(SDD1, [x,y], [1,1]);
disp(['The SDD index is: ', char(expand(SDD1))]);
disp([' SDD(G) = ' char(SDD)]);

DxDy = simplify(x*diff(Dy,x));
K = subs(DxDy, y, x);
IG = simplify(int(K/x, x));
I = subs(IG, [x,y], [1,1]);
disp(['The Inverse sum indeg index is: ', char(expand(IG))]);
disp([' I(G) = ' char(I)]);

Dy = simplify(y*diff(P,y));
D2y = simplify(y*diff(Dy,y));
D3y = simplify(y*diff(D2y,y));
Dx = simplify(x*diff(D3y,x));
D2x = simplify(x*diff(Dx,x));
D3x = simplify(x*diff(D2x,x));
 Apolynomial = subs(D3x, y, x);
 Apolynomial = simplify(x^(-2)*Apolynomial);
 Apolynomial = int(Apolynomial/x,x);
 Apolynomial = int(Apolynomial/x,x);
 Apolynomial = int(Apolynomial/x,x);
A = subs(Apolynomial, x,1);
disp(['The Augmented Zagreb index is A(G) = :' char(expand(Apolynomial))]);
disp([' A(G) = ' char(A)]);
