clc;clear all;close all;

c=3e8;

w=[447,470,520,532]*10^(-9);
V_s=[0.68,0.55,0.35,0.33];
err=[0.01,0.01,0.01,0.01];
f=c./w;

p=polyfit(f,V_s,1);
y=polyval(p,f);

figure()
errorbar(f,V_s,err,'or','MarkerSize',5,'MarkerEdgeColor','red','MarkerFaceColor','red'); hold on
plot(f,y,'-b');

e=1.602e-19;
gradient=p(1)
plankC=p(1)*e
work_function=-p(2)

f_0=-p(2)/p(1)
wl_ct=c/f_0

df_0=sqrt(((1/p(1))^2)*(0.005)^2+((p(2)/(p(1))^2)^2)*(0.008e-15)^2)
dwl=(c/(f_0^2))*df_0



corr2(w,V_s)
xlabel('Freequency(Hz)','FontSize', 15);
ylabel('Stopping potenttial (V)','FontSize', 15);

legend('Data points','fitted curve','FontSize', 15);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x=f;
y=V_s;
e=err;
s=0; sx=0; sy=0; sxx=0; sxy=0;
for i=1:length(y);
s = s + 1./(e(i)*e(i));
sx = sx + x(i)/(e(i)*e(i));
sy = sy + y(i)/(e(i)*e(i));
sxx = sxx + (x(i)*x(i))/(e(i)*e(i));
sxy = sxy + (x(i)*y(i))/(e(i)*e(i));
end;
a = (sxx*sy-sx*sxy)/(s*sxx-sx*sx)
b = (s*sxy-sx*sy)/(s*sxx-sx*sx)
v = a + b*x;
plot(x,v,'-b'); hold on;

d=sxx-sx^2;
er_a=sqrt(abs(sxx/d))
er_b=sqrt(abs(s/d))