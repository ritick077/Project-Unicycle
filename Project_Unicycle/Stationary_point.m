close all
f = @(t,x) [50*(sqrt(x(1)^2+x(2)^2)-5)*(sqrt(x(1)^2+x(2)^2)-6)*cos(x(3));
    50*(sqrt(x(1)^2+x(2)^2)-5)*(sqrt(x(1)^2+x(2)^2)-5)*sin(x(3));(sqrt(x(1)^2+x(2)^2-5))*(sqrt(x(1)^2+x(2)^2)-6)];
options = odeset('RelTol',1e-12,'AbsTol',1e-12);
[t,xa] = ode45(f,[0 10],[6.1 0 0],options);
figure
plot (xa(:,1),xa(:,2))
grid on
title('y(t) vs x(t)')
xlabel('x'), ylabel('y')




