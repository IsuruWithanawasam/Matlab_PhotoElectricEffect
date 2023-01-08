clc;clear all;close all;

V=[4:-0.2:-1];
i_524=[2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.4,2.3,2.1,2.0,1.8,1.5,1.3,1.1,0.9,0.6,0.4,0.2,0.1,0,0,0,0,0];
i_470=[2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.4,2.3,2.2,2,1.8,1.6,1.4,1.1,0.9,0.7,0.5,0.3,0.1,0,0,0,0];
i_532_1=[5.0,4.8,4.9,5.0,4.7,4.9,4.8,4.8,4.7,4.4,4.1,3.8,3.7,2.9,2.6,2.0,1.5,1.3,1.0,0.4,0.1,0,0,0,0,0];
i_447_1=[5.1,5.3,5.0,5.2,5.1,5.0,5.2,5.0,5.1,4.8,4.8,4.5,4.0,4.0,3.7,2.9,2.7,2.0,1.5,1.3,0.6,0.4,0.1,0,0,0];
i_650=zeros(1,length(V));
er=ones(1,length(V))*0.1;

figure ();
set(0,'DefaultLineLineWidth',1)
errorbar(V,i_532_1,er,'og','MarkerSize',5,'MarkerEdgeColor','green','MarkerFaceColor','green');hold on;
errorbar(V,i_447_1,er,'^b','MarkerSize',5,'MarkerEdgeColor','blue','MarkerFaceColor','blue');hold on;
errorbar(V,i_650,er,'sr','MarkerSize',5,'MarkerEdgeColor','red','MarkerFaceColor','red');hold on;
errorbar(V,i_524,er,'pm','MarkerSize',6,'MarkerEdgeColor','magenta','MarkerFaceColor','magenta');hold on;
errorbar(V,i_470,er,'dk','MarkerSize',4,'MarkerEdgeColor','black','MarkerFaceColor','black');hold on;

x=[4:-0.01:-1];
p3=polyfit(V,i_650,1);
f3=polyval(p3,x);


plot(x,f3,'r');hold on;

createFit3(V,i_470);hold on;
createFit4(V,i_532_1);hold on;
createFit6(V,i_524);hold on;
createFit5(V,i_447_1)
legend({'532nm Laser (50 mW)','447nm Laser (50 mW)','650nm Laser (10 mW)','Green LED','Blue LED'},'FontSize', 15 );
xlabel('Voltage(V)','FontSize', 18);
ylabel('Photoelectric Current (I)','FontSize', 18);
