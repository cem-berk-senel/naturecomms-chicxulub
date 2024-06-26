clc; clear; close all;
gton=[30 70 110 220 325];
max=[6.7041	3.5840	2.8096	2.1926	1.6841];
average=[5.6448	2.7755	1.3187	-0.2475	-1.2367];
min=[4.6808	2.1794	0.7084	-1.0743	-2.3533];
vzero=zeros(1,5); vx=linspace(0,350,5);
x = gton; y = average; diff = (max-min)/2;
figure(1);
errorbar(x,y,diff,"-o","MarkerSize",10,"MarkerEdgeColor","k","MarkerFaceColor",[0.65 0.85 0.90]);
hold on;
plot(vx,vzero,'--k','linew',2);
hx=xlabel('\bf Total estimated impact-released S (Gt)'); xlim([0 350]); xticks(0:50:350);
hy=ylabel('\bf Global-average surface temperature (\circC)'); yticks(-10:1:10);