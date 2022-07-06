 close all
 clc
f = @(t,x) [50*(sqrt(x(1)^2+x(2)^2)-2.5)*(sqrt(x(1)^2+x(2)^2)-5)*cos(x(3));
    50*(sqrt(x(1)^2+x(2)^2)-2.5)*(sqrt(x(1)^2+x(2)^2)-5)*sin(x(3));((x(1)^2+x(2)^2))];
options = odeset('RelTol',1e-10,'AbsTol',1e-10);
[t,xa] = ode45(f,[0 200],[0 0 0],options);
figure
plot(xa(:,1),xa(:,2))
grid on
title('y(t) vs x(t)')
xlabel('x'), ylabel('y')
for i=1:length(t)
    r(i)=sqrt(xa(i,1)^2+xa(i,2)^2);
    vr(i)=(r(i)-2.5)*(r(i)-5);
    fr(i)=r(i)^2;
end 
max(r)
min(r)
figure
plot(r,vr,'r',r,fr,'g','Linewidth',2)
