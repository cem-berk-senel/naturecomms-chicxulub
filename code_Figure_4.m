%%
clear; clc; close all;
% cd /nobackup/postdoc/senel/paleoWRF/nature_comm/isotope_sulfur/;
load cd_o_sulfur_gton325.mat;
load ts_o_sulfur_gton325.mat;
load cd_o_sulfur_gton200.mat;
load ts_o_sulfur_gton200.mat;
load cd_o_sulfur_gton110.mat;
load ts_o_sulfur_gton110.mat;
load cd_o_sulfur_gton070.mat;
load ts_o_sulfur_gton070.mat;
load cd_o_sulfur_gton030.mat;
load ts_o_sulfur_gton030.mat;

%%
tref=273.15;
% cd /nobackup/postdoc/senel/paleoWRF/final_naturecomm_isosulfur/test/em_global_earth/;
close all;
figure(1);
ll_1=linspace(-2,20,22*365);
ll_2=linspace(0,20,20*365);

ha = tight_subplot(2,1,[.1 .1],[.05 .03],[.08 .03]);
%
axes(ha(1))
plot(ll_1,ts_o_sulfur_gton030(1:size(ll_1,2))-tref,'-','color',[ 195, 155, 211 ]./255,'linew',1.5); hold on;
plot(ll_1,ts_o_sulfur_gton070(1:size(ll_1,2))-tref,'-k','linew',4); hold on;
plot(ll_1,ts_o_sulfur_gton110(1:size(ll_1,2))-tref,'-c','linew',1.5); hold on;
plot(ll_1,ts_o_sulfur_gton200(1:size(ll_1,2))-tref,'-b','linew',1.5); hold on;
plot(ll_1,ts_o_sulfur_gton325(1:size(ll_1,2))-tref,'-','color',[199, 21, 133]./255,'linew',1.5); hold on;
ylim([-5 21]); yticks(-10:5:25);
xlim([-2 20]); xticks(-4:1:25);
hy=ylabel('\bf [\circC]'); hx=xlabel('\bf time after impact [years]');
legend('30 Gt S','70 Gt S (Present study)','110 Gt S','200 Gt S','325 Gt S','location','east');
title('\bf Global-average surface temperature');
%
axes(ha(2))
semilogy(ll_2,cd_o_sulfur_gton030(1:size(ll_2,2))./(1e3),'-','color',[195, 155, 211]./255,'linew',1.5); hold on;
semilogy(ll_2,cd_o_sulfur_gton070(1:size(ll_2,2))./(1e3),'-k','linew',4); hold on;
semilogy(ll_2,cd_o_sulfur_gton110(1:size(ll_2,2))./(1e3),'-c','linew',1.5); hold on;
semilogy(ll_2,cd_o_sulfur_gton200(1:size(ll_2,2))./(1e3),'-b','linew',1.5); hold on;
semilogy(ll_2,cd_o_sulfur_gton325(1:size(ll_2,2))./(1e3),'-','color',[199, 21, 133]./255,'linew',1.5); hold on;
ylim([1e-5 1e13]); yticks([1e-5 1e-4 1e-3 1e-2 1e-1 1e0 1e1 1e2 1e3 1e4 1e5 1e6 1e7 1e8 1e9 1e10 1e11 1e12 1e13]);
xlim([-2 20]); xticks(-4:1:25);
hy=ylabel('\bf [Tonnes]'); hx=xlabel('\bf time after impact [years]');
title('\bf Global column-integrated mass');
legend('30 Gt S','70 Gt S (Present study)','110 Gt S','200 Gt S','325 Gt S','location','east');