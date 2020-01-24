clear;
% ----- define the functions-----
U = @(e,s,r) 4*e*((s./r).^12 - (s./r).^6); 
rep = @(e,s,r) 4*e*((s./r).^12);
att = @(e,s,r) -4*e*((s./r).^6);

%----- defining the variables ---------
e = 0.0031;                           
s = 2.74;                               
r = linspace(0.75,8);

% ---- calling the functions -------
U_LJ = U(e,s,r);
rep_LJ = rep(e,s,r);
att_LJ = att(e,s,r);

% ---- plotting--------------
figure(1)
plot(r, U_LJ,'LineWidth',3)
hold on
grid
%plot(r,rep_LJ,'LineWidth',3)
hold on
%plot(r, att_LJ,'LineWidth',3)
hold on
axis([0.75  8    -0.01 0.01])   % x & y axes interval change 
%legend('Lennard-Jones','replusive', 'attractive')

set(legend,'FontSize',14);