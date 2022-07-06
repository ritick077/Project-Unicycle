clc
close all
f = @(t,x) [50*(sqrt(x(1)^2+x(2)^2)-1)*(sqrt(x(1)^2+x(2)^2))*cos(x(3));
    50*(sqrt(x(1)^2+x(2)^2)-1)*(sqrt(x(1)^2+x(2)^2))*sin(x(3));100*(sqrt(x(1)^2+x(2)^2)-1)*(sqrt(x(1)^2+x(2)^2))];
options = odeset('RelTol',1e-10,'AbsTol',1e-10);
[t,xa] = ode45(f,[0 10],[2 0 3*pi/2],options);
figure

plot(xa(:,1),xa(:,2),'Linewidth',2)
grid on
title('y(t) vs x(t)')
xlabel('x'), ylabel('y')

for i=1:length(t)
     ra(i)=sqrt(xa(i,1)^2+xa(i,2)^2);
     va(i) = 50*(ra(i))*(ra(i)-1);
     fa(i) = 100*(ra(i))*(ra(i)-1);
     aa(i) = 100*(ra(i)^2)*(ra(i)/3-1/2);
end 
max(ra)
min(ra)
% max(aa)
% min(aa)
% figure
% plot(t,ra)
% hold on
% plot(t,va,'r')
% grid on
% %hold on
% plot(t,fa,'r')